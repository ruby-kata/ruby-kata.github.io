runlist = []
t1 = task(:t1 => [:t2, :t3]) { |t| runlist << t.name }
task(:t2 => [:t0, :t4]) { |t| runlist << t.name }
task(:t3 => [:t0]) { |t| runlist << t.name }
task(:t4 => [:t0]) { |t| runlist << t.name }
task(:t0) { |t| runlist << t.name }
t1.invoke
runlist # ["t0", "t4", "t2", "t3", "t1"]

t1 = task(t1: [:t2]) { |t| }
t2 = task(t2: [:t1]) { |t| }
assert_raises(RuntimeError.new("circular dependency")) { t1.invoke }
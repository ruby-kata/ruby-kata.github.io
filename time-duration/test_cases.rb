t = Time.local(2024, 4, 13)
assert_equal 1.day.ago(t), t - 86400
assert_equal 2.weeks.ago(t), t - 1209600
assert_equal 1.month.ago(t), t - 2678400
assert_equal 2.months.ago(t), t - 5184000
assert_equal 3.months.ago(t), t - 7862400

t1 = Time.local(2024, 2, 28)
assert_equal 2.day.since(t1), t1 + 172800
assert_equal 1.week.since(t1), t1 + 604800
assert_equal 2.weeks.since(t1), t1 + 1209600
assert_equal 1.month.since(t1), t1 + 2505600
assert_equal 4.month.since(t1), t1 + 10454400
assert_equal 9.month.since(t1), t1 + 23673600
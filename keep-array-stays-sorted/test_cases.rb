a = SortedArray.new([3,2,1])
assert_equal a, [1,2,3]
a << -1
assert_equal a, [-1,1,2,3]
a << 1.5
assert_equal a, [-1, 1, 1.5, 2, 3]
a.push(2.5)
assert_equal a, [-1, 1, 1.5, 2, 2.5, 3]
a.unshift(1.6)
assert_equal a, [-1, 1, 1.5, 1.6, 2, 2.5, 3]
a.collect! { |x| x * -1 }
assert_equal a, [-3, -2.5, -2, -1.6, -1.5, -1, 1]
a[3] = 25
assert_equal a, [-3, -2.5, -2, -1.6, -1.5, -1, 1, 25]
a[1..2] = [6000, 10, 600, 6]
assert_equal a, [-3, -1.5, -1, 1, 6, 10, 25, 600, 6000]
a += [0, -10]
assert_equal a, [-10, -3, -1.5, -1, 0, 1, 6, 10, 25, 600, 6000]
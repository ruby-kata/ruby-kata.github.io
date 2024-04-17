assert_equal [1,2,2,3,5].mean, 2.6
assert_equal [100,100,100,100.1].mean, 100.025
assert_equal [1,2,2,3,5].median, 2
assert_equal [2,3,-100,100].median, 2.5
assert_equal [1, 1, 10, 100, 1000].median, 10
assert_equal [1,2,2,3,5].standard_deviation, 1.52
assert_equal [1,1,2,2,3,4,4,4,4,4].modes, [4]
assert_equal [1,1,2,2,3,4,4].modes, [1,2,4]
assert_equal [1,2,3].modes, []
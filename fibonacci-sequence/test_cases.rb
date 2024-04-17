fib = Fibonacci.new
assert_equal fib.succ, 1
assert_equal fib.succ, 1
assert_equal fib.succ, 2
assert_equal fib.succ, 3
assert_equal Fibonacci[0..3], [1,1,2,3]
assert_equal Fibonacci[..4], [1,1,2,3,5]
assert_equal Fibonacci[6], 13
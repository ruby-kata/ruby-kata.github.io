ll = LinkedList.new
ll << 1 << 2 << 3 << 4
assert_equal ll.collect { |x| x.even? }, [false, true, false, true]
assert_equal ll.detect { |x| x > 3 }, 4
assert_equal ll.select(&:odd?), [1, 3]
assert_equal ll.map { |x| x ** 2 }, [1, 4, 9, 16]
assert_equal ll.map.with_index { |x, i| [i, x] }, [[0,1], [1,2], [2,3], [3,4]]
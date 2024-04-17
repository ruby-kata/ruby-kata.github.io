primes_sequence = PrimesSequence.new
assert_equal primes_sequence.succ, 2
assert_equal primes_sequence.succ, 3
assert_equal primes_sequence.succ, 5
assert_equal primes_sequence.succ, 7
assert_equal PrimesSequence[0..3], [2,3,5,7]
assert_equal PrimesSequence[..4], [2,3,5,7,11]
assert_equal PrimesSequence[6], 17
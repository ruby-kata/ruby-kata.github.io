assert_equal 72.to_roman.to_s, 'LXXII'
assert_equal 444.to_roman.to_s, 'CDXLIV'
assert_equal 1979.to_roman.to_s, 'MCMLXXIX'
assert_equal Roman.to_arabic('MCMLXXIX'), 1979
assert_equal 'MMI'.to_roman.to_arabic, 2001
assert_equal ('MMI'.to_roman + 3).to_s, 'MMIV'
assert_equal (612.to_roman * 3.to_roman).to_s, 'MDCCCXXXVI'
assert_equal 'MCMXCIX'.to_roman.succ.to_s, 'MM'
assert_raises(ArgumentError.new('Invalid Roman number: IIII')) { 'IIII'.to_roman }
assert_raises(ArgumentError.new('Invalid Roman number: IVI')) { 'IVI'.to_roman }
assert_raises(RangeError.new('-10 can't be represented as a Roman number.')) { -10.to_roman }
assert_equal 'GO HOME!'.mgsub([[/.*GO/i, 'Home'], [/home/i, 'is where the heart is']]), 'Home is where the heart is!'
assert_equal 'Here is number #123'.mgsub([[/[a-z]/i, '#'], [/#/, 'P']]), '#### ## ###### P123'
assert_equal 'between'.mgsub([[/ee/, 'AA'], [/e/, 'E']]), 'bEtwAAn'
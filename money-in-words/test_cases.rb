assert_equal money_in_words('$1'), 'one dollar'
assert_equal money_in_words('$0.01'), 'one cent'
assert_equal money_in_words('$8.03'), 'eight dollars, three cents'
assert_equal money_in_words('$2.53'), 'two dollars, fifty-three cents'
assert_equal money_in_words('$0.22'), 'twenty-two cents'
assert_equal money_in_words('$73.75'), 'seventy-three dollars, seventy-five cents'
assert_equal money_in_words('$123456.50'), 'one hundred and twenty-three thousand four hundred and fifty-six dollars, fifty cents'
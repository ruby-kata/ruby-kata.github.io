OpeningHours.config(open_days: ['Mon', 'Wed', 'Fri'], open_hours: 8..16)

assert OpeningHours.is_open_on?('2016-05-11T12:22:11.824Z')
assert OpeningHours.is_open_on?('2016-05-12T12:22:11.824Z')
assert_equal '2016-05-13T08:00:00.000Z', OpeningHours.next_opening_date('2016-05-11T12:22:11.824Z')
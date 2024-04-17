assert_equal 'This is an example of text justification.'.full_justify(16), 
             'This    is    an
              example  of text
              justification.  '

assert_equal 'What must be acknowledgment shall be'.full_justify(16), 
             'What   must   be
              acknowledgment  
              shall be        '

assert_equal 'Science is what we understand well enough to explain to a computer. Art is everything else we do'.full_justify(20), 
             'Science  is  what we
              understand      well
              enough to explain to
              a  computer.  Art is
              everything  else  we
              do                  '
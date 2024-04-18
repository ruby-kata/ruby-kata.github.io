@count_success = 0
@count_failed = 0
@result = []

def assert_equal(reality, expected)
    if reality == expected
        @count_success += 1
        @result << "#{@result.size+1}. OK\n------------------------------------------------------------------------------------\n------------------------------------------------------------------------------------\n"
    else
        @count_failed += 1
        @result << <<~TEXT
#{@result.size+1}. FAILED
    
Expect:
    #{reality}

To Equal:
    #{expected}

------------------------------------------------------------------------------------
------------------------------------------------------------------------------------

TEXT
    end
end

def assert(reality)
    assert_equal(reality, true)
end

def assert_raises(expected, &block)
    begin
        block.call
    rescue => error
        if error.class == expected.class && error.message == expected.message
            @count_success += 1
            @result << "#{@result.size+1}. OK\n------------------------------------------------------------------------------------\n------------------------------------------------------------------------------------\n"
        else
            @count_failed += 1
            @result << <<~TEXT
#{@result.size+1}. FAILED 

Expect Error: #{expected}

Receive Error: #{error}

------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
TEXT
        end
    ensure
        if error.nil?
            @count_failed += 1
            @result << <<~TEXT
#{@result.size+1}. FAILED 

Expect to raise Error but nothing happen

------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
TEXT
        end
    end
end

def run(testcases)
    eval(testcases)

    output = "#{@result.join('')}\n\nOK: #{@count_success}, FAILED: #{@count_failed}\n\n"
    
    @count_success = 0
    @count_failed = 0
    @result = []

    output
end

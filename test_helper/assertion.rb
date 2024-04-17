@count_success = 0
@count_failed = 0
@result = []

def assert_equal(reality, expected)
    if reality == expected
        @count_success += 1
        @result << "#{@result.size+1}. OK\n\n"
    else
        @count_failed += 1
        @result << "#{@result.size+1}. FAILED receive: #{reality}\n\n"
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
            @result << "#{@result.size+1}. OK\n\n"
        else
            @count_failed += 1
            @result << "#{@result.size+1}. FAILED get: #{error}\n\n"
        end
    end
end

def run(testcases)
    eval(testcases)

    "#{@result.join('')}\n------------------------------------------\nOK: #{@count_success}, FAILED: #{@count_failed}\n\n"
end

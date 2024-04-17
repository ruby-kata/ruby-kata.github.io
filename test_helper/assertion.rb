def assert_equal(reality, expected)
    if reality == expected
        "OK"
    else
        "FAILED receive: #{reality}"
    end
end

def run(testcases)
    testcases.split("\n").map do |testcase|
        if testcase.start_with?("assert_")
            "#{testcase} # #{eval(testcase)}"
        else
            eval(testcase)
            nil
        end
    end.compact.join("\n")
end

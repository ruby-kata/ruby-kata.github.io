def assert_equal(reality, expected)
    if reality == expected
        "OK"
    else
        "FAILED receive: #{reality}"
    end
end

# Validate gem-versions

invalid_versions = %W[
  junk
  1.0\n2.0
  1..2
  1.2\ 3.4
].each do |invalid|
  assert_raises ArgumentError.new("Invalid Version") do
    GemVersion.new invalid
  end
end

# Given two gem-versions, compare them:

assert_equal 0, GemVersion.new("1.0") <=> GemVersion.new("1.0.0")
assert_equal -1, GemVersion.new("1.9.3") <=> GemVersion.new("1.9.3.1")
assert_equal 1, GemVersion.new("1.9.3") <=> GemVersion.new("1.9.2.99")
assert_equal 1, GemVersion.new("1.8.2") <=> GemVersion.new("1.8.2.a")
assert_equal 1, GemVersion.new("1.8.2.b") <=> GemVersion.new("1.8.2.a")
assert_equal 1, GemVersion.new("1.8.2.a10") <=> GemVersion.new("1.8.2.a9")
assert_equal -1, GemVersion.new("1.0.0-alpha") <=> GemVersion.new("1.0.0-alpha.1")
assert_equal -1, GemVersion.new("1.0.0-alpha.1") <=> GemVersion.new("1.0.0-beta.1")
assert_equal -1, GemVersion.new("1.0.0-beta.11") <=> GemVersion.new("1.0.0-rc.1")
assert_equal 1, GemVersion.new("1.0.0") <=> GemVersion.new("1.0.0-rc1")


# Support approximate ~>

assert_equal 0, GemVersion.new("~> 1.0") <=> GemVersion.new("1.0").approximate_version
assert_equal 0, GemVersion.new("~> 1.0") <=> GemVersion.new("1.0.0").approximate_version
assert_equal 0, GemVersion.new("~> 1.0") <=> GemVersion.new("1.0.1").approximate_version
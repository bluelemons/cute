test "a passing test output a dot" do
  output = exec "cute test/fixtures/passing.rb"
  assert output =~ /\./
end

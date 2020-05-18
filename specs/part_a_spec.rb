require('minitest/autorun')
require('minitest/reporters')
require_relative('../bank_account')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test
  def test_student_name
    student_account = Student.new("Keith", "e40")
    assert_equal("Keith", student_account.student_name())
  end

end

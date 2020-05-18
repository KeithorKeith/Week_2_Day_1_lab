require('minitest/autorun')
require('minitest/reporters')
require_relative('../part_a')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test

  def test_student_name
    student_account = Student.new("Keith", "e40")
    assert_equal("Keith", student_account.student_name())
  end

  def test_cohort
    student_account = Student.new("Keith", "e40")
    assert_equal("e40", student_account.cohort())
  end

  def test_update_student_name
    student_account = Student.new("Keith", "e40")
    student_account.set_student_name("Kraig")
    assert_equal("Kraig", student_account.student_name())
  end

  def test_update_student_name
    student_account = Student.new("Keith", "e40")
    student_account.set_cohort("e30")
    assert_equal("e30", student_account.cohort())
  end

  def test_talking
    student_account = Student.new("Keith", "e40")
    assert_equal("I can talk!", student_account.talking("I can talk!"))
  end

  def test_say_favourite_language
    student_account = Student.new("Keith", "e40")
    assert_equal("I love ruby", student_account.say_favourite_language("ruby"))
  end
end

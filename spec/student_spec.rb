require("minitest/autorun")
require("minitest/rg")

require_relative("../Student")

class TestStudent < MiniTest::Test

  def test_return_name
    student = Student.new("Roddy", "G6", "Java")

    student_name = student.get_name()
    assert_equal("Roddy", student_name)
  end

  def test_return_cohort
    student = Student.new("Roddy", "G6", "Java")

    cohort = student.get_cohort()
    assert_equal("G6", cohort)
  end

  def test_set_student_info
    student = Student.new("Roddy", "G6", "Java")

    student.set_info("Tommy","G5")

    assert_equal("Tommy",student.get_name())
    assert_equal("G5",student.get_cohort())
  end

  def test_talk
    student = Student.new("Roddy", "G6", "Java")

    assert_equal("Hey I can talk",student.talk("Hey I can talk"))
    assert_equal("I love Java", student.talk("I love #{student.get_language}"))

  end

  def test_get_say_language
    student = Student.new("Roddy", "G6", "Java")

    new_language = student.set_language("Ruby")

    assert_equal("I love Ruby", student.talk("I love #{new_language}"))
  end

end

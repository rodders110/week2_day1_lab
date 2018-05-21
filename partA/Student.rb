class Student


  def initialize(input_student, input_cohort, input_language)

    @name = input_student
    @cohort = input_cohort
    @language = input_language
  end

  def get_name()
    return @name
  end

  def get_cohort()
    return @cohort
  end

  def get_language()
    return @language
  end

  def set_info(name, cohort)
    @name = name
    @cohort = cohort
  end

  def talk(phrase)
    return phrase
  end

  def set_language(language)
    @language = language
  end
end

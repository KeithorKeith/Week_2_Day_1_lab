class Student

    def initialize(student_name, cohort)
        @student_name = student_name
        @cohort = cohort
    end
    #getters
    def student_name
        return @student_name
    end

    def cohort
        return @cohort
    end
    #setters
    def set_student_name(student_name)
        @student_name = student_name
    end

    def set_cohort(cohort)
        @cohort = cohort
    end
    #talking
    def talking(speach)
        return "#{speach}"
    end

    def say_favourite_language(language)
        return "I love #{language}"
    end

end
class StudentsController < ApplicationController
    def index 
        students = Student.all 
        render json: students
    end

    def grades
        studentsgrade = Student.order(grade: :desc)
        render json: studentsgrade
    end
end

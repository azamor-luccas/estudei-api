class StudentController < ApplicationController
    before_action :doorkeeper_authorize!
    before_action :current_student
    
    def basic_info
        render json: current_student.as_json(
            only: [:id, :name, :email, :gender]
            )
    end

end
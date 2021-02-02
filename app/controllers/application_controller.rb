class ApplicationController < ActionController::API
    attr_reader :current_student

    private
    def current_student
      @current_student ||= if doorkeeper_token
        Student.find(doorkeeper_token.resource_owner_id)
      end
    end
end

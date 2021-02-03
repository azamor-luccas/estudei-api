class FieldController < ApplicationController
    before_action :doorkeeper_authorize!
    before_action :current_student
    
    def index
        # BACKLOG: Filter fields by student current course
        render json: Field.all.as_json(
            only: [:id, :name]
            )
    end

end
class LessonController < ApplicationController
    before_action :doorkeeper_authorize!
    before_action :current_student
    
    def index
        if params[:subject_id]
            render json: Lesson.where(subject_id: params[:subject_id], status: "visible").as_json(
                only: [:id, :name],
                methods: [:color]
                ), status: :ok
        else
            render json: Lesson.all.pluck(:id, :name), status: :ok
        end
    end

end
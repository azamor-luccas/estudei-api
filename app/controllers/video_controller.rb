class VideoController < ApplicationController
    before_action :doorkeeper_authorize!
    before_action :current_student

    def index
        if params[:lesson_id]
            render json: Video.where(lesson_id: params[:lesson_id], status: "visible").as_json(
                only: [:id, :duration_in_seconds, :video_url, :vimeo_id]
            ), status: :ok
        else
            render json: "Lesson_id is required", status: :unprocessable_entity
        end
    end

end
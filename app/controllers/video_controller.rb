class VideoController < ApplicationController
    before_action :doorkeeper_authorize!
    before_action :current_student

    def index
        if params[:lesson_id]
            render json: Video.where(lesson_id: params[:lesson_id], status: "visible").as_json(
                only: [:id, :duration_in_seconds, :video_url, :vimeo_id],
                methods: [:color]
            ), status: :ok
        else
            render json: Video.where(status: "visible").order(created_at: :desc).as_json(
                only: [:id, :duration_in_seconds, :video_url, :vimeo_id],
                methods: [:color]
            ), status: :ok
        end
    end

end
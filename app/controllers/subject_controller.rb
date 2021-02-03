class SubjectController < ApplicationController
    before_action :doorkeeper_authorize!
    before_action :current_student
    
    def index
        if params[:field_id]
            render json: Subject.where(field_id: params[:field_id], status: "visible").pluck(:id, :name), status: :ok
        else
            render json: Subject.all.pluck(:id, :name), status: :ok
        end
    end

end
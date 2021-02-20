class JunoController < ApplicationController
    #before_action :doorkeeper_authorize!, except: [:create]
    #before_action :current_student
    
    def index
        render json: params.as_json(), status: :ok
    end

end
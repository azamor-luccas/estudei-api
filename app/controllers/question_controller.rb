class QuestionController < ApplicationController
    before_action :doorkeeper_authorize!, except: [:create]
    before_action :current_student
    
    def index
        render json: {"question": "works"}
    end

    def create
        question = Question.new(create_question_params)
        if question.save
            alternatives = []
            params['alternatives'].each do |alternative|
                alternatives.append({
                    "question_id": question.id,
                    "letter": alternative[0],
                    "description": alternative[1],
                    "correct": params['correctAlternative'] == alternative[0],
                    "created_at": Time.now,
                    "updated_at": Time.now,
                })
            end

            if QuestionAlternative.insert_all(alternatives)
                render json: question, status: :ok
            else
                render json: question.errors, status: :unprocessable_entity
            end

        else
            render json: question.errors, status: :unprocessable_entity
        end

    end

    private
    def create_question_params
        params.permit(
            :statement,
            :subject,
        )
    end

    def create_question_alternative_params
        params.permit(
            :description,
            :correct,
        )
    end
end
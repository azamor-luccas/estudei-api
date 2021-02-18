class Professor::ProfessorController < ApplicationController
    #before_action :doorkeeper_authorize!, except: [:create]
    
    def index_a
        render json: {"question": "works"}
    end

    def subjects
        if params[:field_id]
            render json: Subject.where(field_id: params[:field_id]).pluck(:id, :name), status: :ok
        else
            render json: Subject.all.pluck(:id, :name), status: :ok
        end
    end

    def create_question
        question = Question.new(create_question_params)
        if question.save
            if params[:lesson_id]
                exam = Exam.find_by(lesson_id: params[:lesson_id])
                if exam
                  ExamQuestion.create(exam_id: exam.id, question_id: question.id)
                end
            end
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
            :level,
        )
    end

    def create_question_alternative_params
        params.permit(
            :description,
            :correct,
        )
    end
end
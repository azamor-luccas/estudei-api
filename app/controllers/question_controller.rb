class QuestionController < ApplicationController
    before_action :doorkeeper_authorize!, except: [:create]
    before_action :current_student
    
    def answer_question
        correct_alternative = Question.find_by(id: params[:question_id]).correct_alternative
        exam_student = ExamStudent.where(exam_id: params[:exam_id], student_id: current_student.id, finished: false).first
        if !exam_student
            render json: "ExamStudent not found", status: :unprocessable_entity
        end
        if correct_alternative.id.to_s == params[:alternative_id]
            exam_question_student = ExamQuestionStudent.create(
                student_id: current_student.id,
                exam_student_id: exam_student.id,
                question_id: params[:question_id],
                is_correct: true,
                question_alternative_id: params[:alternative_id]
                )

            
            if exam_question_student.valid?
                render json: { "is_correct": true, "commentaries": Commentary.where(question_id: params[:question_id]).as_json(
                        only: [:commentary, :total_likes, :total_deslikes, :created_at],
                        methods: [:student_name]
                        )}, status: :ok
            else
                render json: exam_question_student.errors, status: :unprocessable_entity
            end

        else
            exam_question_student = ExamQuestionStudent.create(
                student_id: current_student.id,
                exam_student_id: exam_student.id,
                question_id: params[:question_id],
                is_correct: false,
                question_alternative_id: params[:alternative_id]
                )
            if exam_question_student.valid?
                render json: {"is_correct": false}, status: :ok
            else
                render json: exam_question_student.errors, status: :unprocessable_entity
            end
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
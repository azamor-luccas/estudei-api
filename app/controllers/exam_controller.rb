class ExamController < ApplicationController
    before_action :doorkeeper_authorize!
    before_action :current_student
    
    def index
        if params[:lesson_id]
            render json: Exam.where(lesson_id: params[:lesson_id]).as_json(
                only: [:id],
                methods: [:color]
                ), status: :ok
        elsif params[:exam_id]
            questions_ids = Exam.find_by(id: params[:exam_id])&.exam_questions&.pluck(:question_id)
            if questions_ids
                ExamStudent.where(exam_id: params[:exam_id], student_id: current_student.id, finished: false).first_or_create
                render json: Question.where(id: questions_ids).as_json(
                    only: [:id, :statement, :level, :image_url],
                    methods: [:alternatives_json]
                    )
            else
              render json: "Exam or ExamQuestions not found", status: :unprocessable_entity
            end
        else
            render json: "Lesson_id or exam_id is required", status: :unprocessable_entity
        end
    end

end
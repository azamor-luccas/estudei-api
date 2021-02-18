class CommentaryController < ApplicationController
    before_action :doorkeeper_authorize!, except: [:create]
    before_action :current_student
    
    def comment_question
        #params question_id, commentary
        #BACKLOG: verify if student have ExamQuestionStudent correct
        question = Question.find_by(id: params[:question_id])
        # student_have_correct_answer = !ExamQuestionStundent.where(question_id: param[:question_id], student_id: current_student.id, is_correct: true).empty?
        if question # && student_have_correct_answer
            commentary = Commentary.create(
                commentary: params[:commentary],
                question_id: params[:question_id],
                student_id: current_student.id
                )
            if commentary
                render json: "Commentary created", status: :ok
            else
                render json: "Commentary not created", status: :unprocessable_entity
            end

        else
            render json: "Question not found", status: :unprocessable_entity
        end
    end

end
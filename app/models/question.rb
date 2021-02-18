class Question < ApplicationRecord
    has_many :question_alternatives
    has_many :exam_questions
    has_many :lesson_questions
    has_many :exam_question_students
    has_many :commentaries

    def alternatives_json
        self.question_alternatives.as_json(only: [:id, :letter, :description, :image_url])
    end

    def correct_alternative
        QuestionAlternative.where(question_id: self.id, correct: true).first
    end
end

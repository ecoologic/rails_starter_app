# To questions like: "Does the site shares info with third parties?"
class Answer < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :page
  belongs_to :question

  delegate :position, to: :question
  delegate :value, to: :question, prefix: true

  validates :rating, presence: true

  # SQL optimised, otherwise:
  # Question.ordered.includes(:answers).map(&:id).map do |question_id|
  #   find_or_initialize_by(creator_id: creator_id,
  #                         page_id: page_id,
  #                         question_id: question_id)
  # end
  def self.all_present(creator_id, page_id)
    questions = Question.ordered
    existing_answers = where(creator_id: creator_id,
                             page_id: page_id,
                             question_id: questions.map(&:id))
                       .includes(:question)

    questions.map do |question|
      answer = existing_answers.detect { |a| a.question == question }
      answer || new(creator_id: creator_id,
                    page_id: page_id,
                    question: question)
    end
  end
end

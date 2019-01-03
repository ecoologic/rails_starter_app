class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :page
  belongs_to :question
end

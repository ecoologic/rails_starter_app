# To questions like: "Does the site shares info with third parties?"
class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :page
  belongs_to :question
end

# DHH: https://www.youtube.com/watch?v=n0WUjGkDFS0
class Message < ApplicationRecord
  validates :content, presence: true
end

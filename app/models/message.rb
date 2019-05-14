# DHH: https://www.youtube.com/watch?v=n0WUjGkDFS0
class Message < ApplicationRecord
  after_create_commit { MessageBroadcastJob.perform_later(self) }
end

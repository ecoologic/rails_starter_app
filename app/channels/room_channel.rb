class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(params)
    # ActionCable.server.broadcast 'room_channel', message: data['message']

    # Messages::CreateService.new(message_params).call
    sanitized_params = ActionController::Parameters.new(params).permit(message: :content)
    message = Message.create!(sanitized_params[:message])
    MessageBroadcastJob.perform_later(message)
  end
end

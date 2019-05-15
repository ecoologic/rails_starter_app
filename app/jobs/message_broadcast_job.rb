class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast 'room_channel', message_html: render_message(message)
  end

  private

  def render_message(message)
    ApplicationController.renderer.render(message)
  end
end

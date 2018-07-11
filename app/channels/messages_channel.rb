class MessagesChannel < ApplicationCable::Channel
  def subscribed
    conversation = Conversation.find(params[:conversation])
    # http://laithazer.com/blog/2017/03/25/rails-actioncable-stream-for-vs-stream-from/
    stream_for conversation
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

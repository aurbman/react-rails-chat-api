class ConversationsChannel < ApplicationCable::Channel
  def subscribed
    # http://laithazer.com/blog/2017/03/25/rails-actioncable-stream-for-vs-stream-from/
    stream_from "conversations_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

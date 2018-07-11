require 'rails_helper'

RSpec.describe Message, type: :model do
  before do
    @user = User.create(name: 'Andrius')
    @conversation = Conversation.create(title: 'convo title')
  end

  it 'is valid with valid attributes' do
    expect(Message.new(text: 'sup dawg', user_id: @user.id, conversation_id: @conversation.id)).to be_valid
  end

  it 'is not valid without a text' do
    message = Message.new(text: nil)
    expect(message).to_not be_valid
  end
end

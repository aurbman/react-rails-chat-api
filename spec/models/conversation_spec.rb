require 'rails_helper'

RSpec.describe Conversation, type: :model do
  it 'is valid with valid attributes' do
    expect(Conversation.new(title: 'new convo')).to be_valid
  end

  it 'is not valid without a title' do
    conversation = Conversation.new(title: nil)
    expect(conversation).to_not be_valid
  end
end

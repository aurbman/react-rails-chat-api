require 'rails_helper'

RSpec.describe ConversationsController, type: :controller do
  describe 'GET index' do
    it 'returns the list of conversations' do
      convo1 = Conversation.create(title: 'convo1')
      user = User.create(name: 'Andrius')
      message = convo1.messages.build(text: 'message text', user_id: user.id)
      message.save

      get :index

      expect(response).to have_http_status(:success)
      expect(response.body).to include(user.name)
      expect(response.body).to include(message.text)
    end
  end
end

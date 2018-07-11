require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET index' do
    it 'returns the list of users' do
      user1 = User.create(name: 'Alice')
      user2 = User.create(name: 'Bob')
      get :index

      expect(response).to have_http_status(:success)
      expect(response.body).to include(user1.name)
      expect(response.body).to include(user2.name)
    end
  end

  describe 'POST create' do
    it 'creates a new user' do
      before_count = User.count
      post :create, params: { user: { name: 'Andrius' } }
      after_count = User.count

      expect(response).to have_http_status(:success)
      expect(after_count - before_count).to eq(1)
    end
  end
end

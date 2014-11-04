require 'spec_helper'

describe 'Users API' do
  describe 'GET /users' do
    it 'should returns all the users' do
      FactoryGirl.create :user, name: 'desimon'
      FactoryGirl.create :user, name: 'checomon'

      get '/users', {}, {'Accept' => 'application/json'}
      expect(response.status).to eq 200
      body = JSON.parse(response.body)
      expect(body.count).to eq 2
      names = body.map { |u| u['name'] }
      expect(names).to match_array(['desimon', 'checomon'])
    end
  end
end
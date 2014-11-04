require 'spec_helper'

describe 'Movies API' do
  describe 'GET /movies' do
    it 'returns all the movies ' do
      FactoryGirl.create :movie
      FactoryGirl.create :movie

      get '/movies', {}, { 'Accept' => 'application/json'}

      expect(response.status).to eq 200
      body = JSON.parse(response.body)

      expect(body.count).to eq 2
    end
  end
end
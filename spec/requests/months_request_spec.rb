require 'rails_helper'

RSpec.describe 'Months', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/months/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /jan' do
    it 'returns http success' do
      get '/months/jan'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /feb' do
    it 'returns http success' do
      get '/months/feb'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /march' do
    it 'returns http success' do
      get '/months/march'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /april' do
    it 'returns http success' do
      get '/months/april'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /may' do
    it 'returns http success' do
      get '/months/may'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /june' do
    it 'returns http success' do
      get '/months/june'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /july' do
    it 'returns http success' do
      get '/months/july'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /aug' do
    it 'returns http success' do
      get '/months/aug'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /sept' do
    it 'returns http success' do
      get '/months/sept'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /nov' do
    it 'returns http success' do
      get '/months/nov'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /dec' do
    it 'returns http success' do
      get '/months/dec'
      expect(response).to have_http_status(:success)
    end
  end
end

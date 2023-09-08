require 'rails_helper'
require 'requests_helper'

RSpec.describe Api::V1::MotorcyclesController, type: :request do
  describe 'GET #index' do
    context 'User is not authenticated' do
      before :each do
        get api_v1_motorcycles_path
      end

      it 'returns http success' do
        expect(response).to have_http_status(:forbidden)
      end

      it 'assigns all categories to @categories' do
        expect(assigns(:categories)).to_not eq(Category.all)
      end

      it 'gives an error message' do
        expect(response.body).to eq '{"error":"You are not logged in"}'
      end
    end

    context 'User is authenticated' do
      before :each do
        auth_token = signup
        headers = { 'ACCEPT' => 'application/json', 'Authorization' => auth_token }
        get api_v1_motorcycles_path, headers:
      end

      it 'returns http success' do
        expect(response).to have_http_status(:ok)
      end

      it 'redirects to the home page' do
        expect(current_path).to eq(api_v1_motorcycles_path)
      end

      it 'assigns all categories to @categories' do
        expect(@categories).to eq(Category.all)
      end
    end
  end

  describe 'GET #show' do
    context 'User is not authenticated' do
      before :each do
        get api_v1_motorcycles_path(1)
      end

      it 'returns http success' do
        expect(response).to have_http_status(:forbidden)
      end

      it 'gives an error message' do
        expect(response.body).to eq '{"error":"You are not logged in"}'
      end
    end

    context 'User is authenticated' do
      before :each do
        auth_token = signup
        headers = { 'ACCEPT' => 'application/json', 'Authorization' => auth_token }
        get api_v1_motorcycles_path(1), headers:
      end

      it 'returns http success' do
        expect(response).to have_http_status(:ok)
      end

      it 'redirects to the motorcycle show page' do
        expect(current_path).to eq(api_v1_motorcycles_path(1))
      end
    end
  end

  describe 'POST #create' do
    context 'User is not authenticated' do
      before :each do
        create_motorcycle
      end

      it 'returns http success' do
        expect(response).to have_http_status(:forbidden)
      end

      it 'gives an error message' do
        expect(response.body).to eq '{"error":"You are not logged in"}'
      end
    end
  end

  describe 'DELETE #destroy' do
    context 'User is not authenticated' do
      before :each do
        delete api_v1_del_motorcycle_path(1)
      end

      it 'returns http success' do
        expect(response).to have_http_status(:forbidden)
      end

      it 'gives an error message' do
        expect(response.body).to eq '{"error":"You are not logged in"}'
      end
    end
  end
end

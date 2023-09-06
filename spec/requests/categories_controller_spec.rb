require 'rails_helper'
require 'requests_helper'

RSpec.describe Api::V1::CategoriesController, type: :request do
  describe 'GET #index' do
    context 'User is not authenticated' do
      before :each do
        get api_v1_categories_path
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
        get api_v1_categories_path, headers:
      end

      it 'returns http success' do
        expect(response).to have_http_status(:ok)
      end

      it 'redirects to the home page' do
        expect(current_path).to eq(api_v1_categories_path)
      end

      it 'assigns all categories to @categories' do
        expect(@categories).to eq(Category.all)
      end
    end
  end
end

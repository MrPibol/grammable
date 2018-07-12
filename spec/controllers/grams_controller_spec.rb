require 'rails_helper'

RSpec.describe GramsController, type: :controller do
    describe "grams#index action" do
        it "should successfully show the page" do
            get :index
            expect(response).to have_http_status(:success)
        end
    end

    describe "gram#new action" do
        it "shoould successfully show the new form" do
            get :new
            expect(response).to have_http_status(:success)
        end
    end

    describe "gram#create action" do
        it "should successfully save the message in the database" do
            post :create, params: { gram: {message: 'Hello!'} }
        end
    end
end

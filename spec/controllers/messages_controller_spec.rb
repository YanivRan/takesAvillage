require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
  let!(:dialect) { create(:dialect) }
  let!(:user) { create(:user) }

  describe "GET #index" do
    context 'when loading messages' do

      it 'redirects back to root if user not logged in' do
        get :index
        expect(response).to redirect_to(sign_in_path)
      end

      it 'shows the index if user logged in' do
      	sign_in_as(user) 
      	get :index
      	expect(response).to be_success
      end

    end
  end

  describe "POST #create" do
  	context 'when creating a new message' do 

  	  it 'redirects back to root if user not logged in' do
        post :create
        expect(response).to redirect_to(sign_in_path)
      end

      it 'return a flash message if invalid' do
        sign_in_as(user)
      	expect { post :create, params: { message: {} }}
      	.to raise_error(ActionController::ParameterMissing)
      end 

      it 'broadcasts the new message if valid' do
      	allow_any_instance_of(Message).to receive(:translate).and_return("testing message")
      	expect(ActionCable.server).to receive(:broadcast).once
      	sign_in_as(user)
        post :create, params: { message: { body: "testing message" } }
      end
  	end  
  end 

end

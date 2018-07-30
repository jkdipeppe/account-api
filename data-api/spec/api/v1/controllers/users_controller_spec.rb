require "rails_helper"

RSpec.describe Api::V1::UsersController do
  describe "creating a valid user" do
    let(:first_user) { User.create(first_name: 'kyle', last_name: 'dipeppe', email: 'kyle.dipeppe@gmail.com', status: 'active') }

    it "creates guest successfully" do
      expect(first_user).to be_a(User)
    end
  end

  describe "updating a users email" do
    let(:first_user) { User.create(first_name: 'kyle', last_name: 'dipeppe', email: 'kdipeppe@gmail.com', status: 'active') }

    it "updates user email successfully" do
      first_user.update(email: 'k.dipeppe@gmail.com')
      expect(first_user.email).to eq('k.dipeppe@gmail.com')
    end
  end



  describe "GET without API key" do
    let(:first_user) { User.create(first_name: 'kyle', last_name: 'dipeppe', email: 'kdipeppe@gmail.com', status: 'active') }
    it "responds with 401" do
      get '/api/v1/users/email/kdipeppe@gmail.com'

      # items = JSON.parse(response.body)
      expect(response.status).to eq(401)
    end
  end

  # describe "GET user by email" do
  #   let(:key) { ApiKey.create }
  #   let(:first_user) { User.create(first_name: 'kyle', last_name: 'dipeppe', email: 'kdipeppe@gmail.com', status: 'active') }
  #   # headers = { api_key: ApiKey.create }
  #   it "responds with 200" do
  #     headers = {
  #       'Authorization'=> "Token token = \"#{key}\"",
  #       'Content-Type': 'application/json',
  #       'Accept': 'application/json'
  #   }
  #     get '/api/v1/users/email/kdipeppe@gmail.com'
  #     # byebug
  #     items = JSON.parse(response.body)
  #     expect(json.status).to eq(200)
  #   end
  # end

end

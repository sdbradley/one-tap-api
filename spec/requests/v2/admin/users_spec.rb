require "rails_helper"

RSpec.xdescribe "AdminUsers", type: :request do

  let(:account) { create(:account) }
  let(:user) do
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email_address: Faker::Internet.email, password: Faker::Internet.password, is_approved: true, account: account)
  end
  let(:user_params) do
    {
      first_name: user.first_name,
      last_name: user.last_name,
      email_address: user.email_address
    }
  end

  describe "POST /create_user" do
    it "should create a new user" do
      expect do
        post "/api/v2/admin",
             params: {
               user: user_params
             }
      end.to change(User, :count).by(1)
    end
  end
end

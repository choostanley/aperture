require 'rails_helper'

 RSpec.describe User, type: :model do
    it { should validate_length_of(:name).is_at_most(50) }
    it { should validate_length_of(:password).is_at_least(6) }
    it { should have_secure_password }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should have_many(:photos) }
  end

describe User, "#password_optional?" do
 it "allows user to be saved without a password" do
   user = User.new
   user.password_optional?
   expect(user.password_optional?).to eq(true)
 end
end
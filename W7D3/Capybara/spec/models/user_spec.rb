require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject(:user) do
    FactoryBot.build(:user, email: "123@123.comm", password: "1234567")
  describe "validations" do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

  it "creates a password digest when a password is given" do
    expect(user.password_digest).to_not be_nil
  end

  it "creates a session token before validation" do
    user.valid?
    expect(user.session_token).to_not be_nil
  end

  describe "#reset_session_token!" do
    it "should set a new session token to the user" do
      user.valid?
      old_session_token = user.session_token
      user.reset_session_token!
      expect(user.session_token).to_not eq(old_session_token)
    end

    it "returns the new session token" do
      expect(user.reset_session_token!).to eq(user.session_token)
    end
  end

  describe "#is_password?" do 
    it "verifies that the password is the correct one" do
      expect(user.is_password?("correct_password"))to be true
    end

    it "verifies that the password is the incorrect one" do
      expect(user.is_password?("incorrect_password"))to be false
    end
  end 

  
end


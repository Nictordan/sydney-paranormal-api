require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid" do
    user = User.new(username: "victor", email: "victor@gmail.com", password: "password", password_confirmation: "password")
    expect(user).to be_valid
  end
  it "Requires Username" do
    user = User.new(username: nil, email: "test@test.com", password: "password", password_confirmation: "password")
    expect(user).to be_invalid
  end
  it "Doesn't accept duplicate usernames" do
    user1 = User.create(username: "nick", email: "nick@test.com", password: "password", password_confirmation: "password")
    user2 = User.new(username: "nick", email: "coolnick@test.com", password: "password", password_confirmation: "password")
    expect(user2).to be_invalid
  end
  it "Doesn't accept a user without an email" do
    user = User.new(username: "aidan", email: nil, password: "password", password_confirmation: "password")
    expect(user).to be_invalid
  end
  it "Doesn't accept duplicate email addresses" do
    user1 = User.create(username: "victor", email: "victor@test.com", password: "password", password_confirmation: "password")
    user2 = User.new(username: "alsovictor", email: "victor@test.com", password: "password", password_confirmation: "password")
    expect(user2).to be_invalid
  end
end

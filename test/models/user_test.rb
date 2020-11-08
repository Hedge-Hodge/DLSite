require 'test_helper'

class UserTest < ActiveSupport::TestCase
    test "user attributes must not be empty" do
    user = User.new
    assert user.invalid?
    assert user.errors[:username].any?
    assert user.errors[:given_name].any?
    assert user.errors[:family_name].any?
    assert user.errors[:email].any?
  end
end

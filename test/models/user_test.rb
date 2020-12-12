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

  test "email must be correct format" do
    user = user(:one)

    ok = %w{ abc@gmail.com xyz@yahoo.com simple@example.com
      very.common@example.com disposable.style.email.with+symbol@example.com
      example-indeed@strange-example.com }
    bad = %w{ Abc.example.com A@b@c@example.com a"b(c)d,e:f;g<h>i[j\k]l@example.com
      just"not"right@example.com this is"not\allowed@example.com }

    ok.each do |email|
      user.email = email
      assert user.valid?, "#{email} should be a valid email address"
    end

    bad.each do |url|
      user.email = email
      assert user.invalid?, "#{email} shouldn't be a valid email address"
    end
  end

end

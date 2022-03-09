require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = build(:user)
  end

  test 'can save valid user' do
    assert @user.valid?
    assert @user.save
  end

  test 'has performances' do
    assert_respond_to @user, :performances
  end
end

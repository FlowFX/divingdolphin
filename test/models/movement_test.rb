require 'test_helper'

class MovementTest < ActiveSupport::TestCase
  def setup
    @movement = build(:movement)
  end

  test 'can save valid movement' do
    assert @movement.valid?
    assert @movement.save
  end

  test 'invalid without name' do
    @movement.name = nil

    refute @movement.valid?
    assert_not_nil @movement.errors[:name]
  end
end

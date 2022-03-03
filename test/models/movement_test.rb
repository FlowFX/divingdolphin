require 'test_helper'

class MovementTest < ActiveSupport::TestCase
  def setup
    @movement = build(:movement)
  end

  test 'can save valid movement' do
    assert @movement.valid?
    assert @movement.save
  end

  # Validations
  test 'invalid without name' do
    @movement.name = nil

    refute @movement.valid?
    assert_not_nil @movement.errors[:name]
  end

  # Associations
  test 'has many exercises' do
    assert_respond_to @movement, :exercises
  end

  test 'has many performances through exercises' do
    assert_respond_to @movement, :performances
  end
end

require 'test_helper'

class MovementTest < ActiveSupport::TestCase
  def setup
    @movement = Movement.new(name: 'Pull-up', abbreviation: 'PLU')
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

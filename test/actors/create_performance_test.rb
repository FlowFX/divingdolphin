require 'test_helper'

class CreatePerformanceTest < ActiveSupport::TestCase
  def setup
    @user = users(:kathrin)
  end

  test 'creates performance from exercise' do
    exercise = create(:exercise)

    params = {
      exercise_id: exercise.id,
      date: Date.today
    }

    result = nil

    assert_changes 'Performance.count', from: 0, to: 1 do
      result = CreatePerformance.call(params:, user: @user)
    end

    assert result.success?
    assert_kind_of Performance, result.object
  end

  test 'creates performance from movement' do
    movement = create(:movement)

    params = {
      movement_id: movement.id,
      sets: 5,
      repetitions: 5,
      date: Date.today
    }

    result = nil

    assert_changes 'Performance.count', from: 0, to: 1 do
      result = CreatePerformance.call(params:, user: @user)
    end

    assert result.success?
    assert_kind_of Performance, result.object
  end
end

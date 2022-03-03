require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  def setup
    @exercise = Exercise.new(
      movement: Movement.new(name: 'Pull-up'),
      sets: 5,
      repetitions: 1
    )
  end

  test 'can save valid exercise' do
    assert @exercise.valid?
    assert @exercise.save
  end

  test 'invalid with zero sets' do
    @exercise.sets = 0

    refute @exercise.valid?
    assert_not_nil @exercise.errors[:sets]
  end

  test 'invalid with zero reps' do
    @exercise.repetitions = 0

    refute @exercise.valid?
    assert_not_nil @exercise.errors[:repetitions]
  end
end

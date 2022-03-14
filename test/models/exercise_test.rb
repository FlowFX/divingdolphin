require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  def setup
    @exercise = build(:exercise)
  end

  test 'can save valid exercise' do
    assert @exercise.valid?
    assert @exercise.save
  end

  # Validations
  test 'invalid with zero sets' do
    @exercise.sets = 0

    refute @exercise.valid?
    assert_not_empty @exercise.errors[:sets]
  end

  test 'invalid with zero reps' do
    @exercise.repetitions = 0

    refute @exercise.valid?
    assert_not_empty @exercise.errors[:repetitions]
  end

  test 'no exercise can have the same movement, reps, and sets' do
    # GIVEN a persisted exercise
    movement = create(:movement)
    repetitions = 5
    sets = 5

    create(:exercise, movement:, sets:, repetitions:)

    # WHEN building another exercise with the same attributes
    exercise_b = build(:exercise, movement:, sets:, repetitions:)

    # THEN it is not valid
    refute exercise_b.valid?
    assert_not_empty exercise_b.errors[:movement]

    # WHEN one attribute is nil
    exercise_b.sets = nil

    # THEN everything's fine
    assert exercise_b.valid?
  end

  # Associations
  test 'has one movement' do
    assert_respond_to @exercise, :movement
  end

  test 'has many performances' do
    assert_respond_to @exercise, :performances
  end

  test 'cannot delete if performances exist' do
    create(:performance, exercise: @exercise)

    refute @exercise.destroy
    assert_not_empty @exercise.errors[:base]
  end
end

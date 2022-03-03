require 'test_helper'

class ExercisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exercise = Exercise.create(
      movement: Movement.create(name: 'Pull-up'),
      sets: 5,
      repetitions: 1
    )
  end

  test 'should get index' do
    get exercises_url
    assert_response :success
  end

  test 'should get new' do
    get new_exercise_url
    assert_response :success
  end

  test 'should create exercise' do
    assert_difference('Exercise.count') do
      post exercises_url,
           params: { exercise: { movement_id: @exercise.movement_id, sets: @exercise.sets,
                                 unit: @exercise.repetitions } }
    end

    assert_redirected_to exercise_url(Exercise.last)
  end

  test 'should show exercise' do
    get exercise_url(@exercise)
    assert_response :success
  end

  test 'should get edit' do
    get edit_exercise_url(@exercise)
    assert_response :success
  end

  test 'should update exercise' do
    patch exercise_url(@exercise),
          params: { exercise: { movement_id: @exercise.movement_id, sets: @exercise.sets,
                                unit: @exercise.repetitions } }
    assert_redirected_to exercise_url(@exercise)
  end

  test 'should destroy exercise' do
    assert_difference('Exercise.count', -1) do
      delete exercise_url(@exercise)
    end

    assert_redirected_to exercises_url
  end
end

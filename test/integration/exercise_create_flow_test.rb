require 'test_helper'

class ExerciseCreateFlowTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:kathrin)
  end

  test 'can see the exercises index' do
    get '/exercises'
    assert_response :success
  end

  test 'can create new exercise' do
    get '/exercises/new'
    assert_response :success

    post '/exercises', params: { exercise: { movement_id: nil } }
    assert_response :unprocessable_entity

    post '/exercises', params: { exercise: { movement_id: create(:movement).id } }
    assert_response :redirect

    follow_redirect!
    assert_response :success
  end

  test 'can edit existing exercise' do
    exercise_a = create(:exercise)
    exercise_b = create(:exercise)

    get "/exercises/#{exercise_b.id}/edit"
    assert_response :success

    patch "/exercises/#{exercise_b.id}", params: { exercise: { movement_id: exercise_a.movement.id } }
    assert_response :unprocessable_entity

    patch "/exercises/#{exercise_b.id}", params: { exercise: { sets: 5 } }
    assert_response :redirect

    follow_redirect!
    assert_response :success
  end

  test 'can delete exercise' do
    exercise = create(:exercise)

    delete "/exercises/#{exercise.id}"
    assert_response :redirect
  end
end

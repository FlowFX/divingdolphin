require 'test_helper'

class PerformanceCreateFlowTest < ActionDispatch::IntegrationTest
  def setup
    sign_in users(:kathrin)
  end

  test 'can see the performances index' do
    get '/performances'
    assert_response :success
  end

  test 'can create new performance' do
    get '/performances/new'
    assert_response :success

    # Given no exercise
    post '/performances',
         params: { performance: { exercise_id: nil, date: Date.today } }
    assert_response :unprocessable_entity

    # Given an existing exercise
    exercise = create(:exercise, sets: 5, repetitions: 10)

    post '/performances',
         params: { performance: { exercise_id: exercise.id, date: Date.today } }
    assert_response :redirect

    follow_redirect!
    assert_response :success
  end
end

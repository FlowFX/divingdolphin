require 'test_helper'

class PerformanceCreateFlowTest < ActionDispatch::IntegrationTest
  def setup
    sign_in users(:kathrin)
  end

  test 'can create new performance' do
    # Given an existing exercise
    exercise = create(:exercise, sets: 5, repetitions: 10)

    post '/performances',
         params: { performance: { exercise_id: exercise.id, date: Date.today } }
    assert_response :redirect
  end
end

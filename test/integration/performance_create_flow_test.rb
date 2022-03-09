require 'test_helper'

class PerformanceCreateFlowTest < ActionDispatch::IntegrationTest
  test 'can see the performances index' do
    post '/users/sign_in', params: { user: {
      email: users(:kathrin).email,
      password: 'password!!'
    } }

    get '/performances'
    assert_response :success
  end
end

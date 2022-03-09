require 'test_helper'

class PerformanceCreateFlowTest < ActionDispatch::IntegrationTest
  def setup
    sign_in users(:kathrin)
  end

  test 'can see the performances index' do
    get '/performances'
    assert_response :success
  end
end

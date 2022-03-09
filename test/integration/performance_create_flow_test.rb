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

    # TODO: continue with https://guides.rubyonrails.org/testing.html#creating-articles-integration
  end
end

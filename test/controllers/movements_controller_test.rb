require 'test_helper'

class MovementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movement = create(:movement)

    sign_in users(:kathrin)
  end

  test 'should get index' do
    get movements_url
    assert_response :success
  end

  test 'should get new' do
    get new_movement_url
    assert_response :success
  end

  test 'should create movement' do
    assert_difference('Movement.count') do
      post movements_url, params: { movement: { name: 'Run' } }
    end

    assert_redirected_to movement_url(Movement.last)
  end

  test 'should return 422 if create fails' do
    post movements_url, params: { movement: { name: nil } }
    assert_response :unprocessable_entity
  end

  test 'should show movement' do
    get movement_url(@movement)
    assert_response :success
  end

  test 'should get edit' do
    get edit_movement_url(@movement)
    assert_response :success
  end

  test 'should update movement' do
    patch movement_url(@movement), params: { movement: { abbreviation: @movement.abbreviation, name: @movement.name } }
    assert_redirected_to movement_url(@movement)
  end

  test 'should return 422 if update fails' do
    patch movement_url(@movement), params: { movement: { name: nil } }
    assert_response :unprocessable_entity
  end

  test 'should destroy movement' do
    assert_difference('Movement.count', -1) do
      delete movement_url(@movement)
    end

    assert_redirected_to movements_url
  end
end

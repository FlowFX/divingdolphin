require 'test_helper'

class PerformanceTest < ActiveSupport::TestCase
  def setup
    @performance = build(:performance)
  end

  test 'can save valid performance' do
    assert @performance.valid?
    assert @performance.save
  end

  # Validations
  test 'invalid without date' do
    @performance.date = nil

    refute @performance.valid?
    assert_not_empty @performance.errors[:date]
  end

  # Associations
  test 'requires an exercise' do
    @performance.exercise = nil

    refute @performance.valid?
    assert_not_empty @performance.errors[:exercise]
  end

  test 'requires a user' do
    @performance.user = nil

    refute @performance.valid?
    assert_not_empty @performance.errors[:user]
  end

  test 'has one movement via exercise' do
    assert_respond_to @performance, :movement
  end
end

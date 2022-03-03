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
  test 'has one exercise' do
    assert_respond_to @performance, :exercise
  end

  test 'has one movement via exercise' do
    assert_respond_to @performance, :movement
  end
end

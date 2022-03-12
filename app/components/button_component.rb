# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  def initialize(url:, method: nil)
    @url = url
    @method = method
  end

  def call
    if @method.present?
      button_to content, @url, method: @method, class: css_classes
    else
      link_to content, @url, class: css_classes
    end
  end

  private

  def css_classes
    'ml-2 rounded-lg py-3 px-5 bg-gray-100 inline-block font-medium'
  end
end

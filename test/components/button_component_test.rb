# frozen_string_literal: true

require 'test_helper'

class ButtonComponentTest < ViewComponent::TestCase
  def test_component_renders_something_useful
    render_inline(ButtonComponent.new(url: 'https://example.com')) { 'Hello, World!' }

    assert_includes rendered_component, 'https://example.com'
    assert_includes rendered_component, 'Hello, World!'
  end

  def test_render_delete_button
    render_inline(ButtonComponent.new(url: 'https://example.com', method: :delete)) { 'Delete me!' }

    assert_includes rendered_component, 'method="post"'
  end
end

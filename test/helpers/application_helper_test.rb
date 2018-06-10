require 'test_helper'
require 'minitest/mock'

class ApplicationHelperTest < ActionView::TestCase

  test "full title helper" do
    assert_equal full_title, t('app.name')
    assert_equal full_title("Help"), "Help | #{t('app.name')}"
  end

end

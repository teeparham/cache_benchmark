require 'test_helper'

class StatsControllerTest < ActionController::TestCase
  test "should get index" do
    mock_cache = mock do
      stubs stats: {server: {cmd_get: 1}}
    end
    Rails.stubs cache: mock_cache
    get :index
    assert_response :success
  end
end

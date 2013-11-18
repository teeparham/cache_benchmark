require 'test_helper'

class RussianNodigestControllerTest < ActionController::TestCase
  test "should get index" do
    Monkey.create(name: "bobo")
    get :index
    assert_response :success
  end

end

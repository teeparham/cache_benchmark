require 'test_helper'

class RussianNodigestControllerTest < ActionController::TestCase
  test "should get index" do
    Cat.create(name: "bobo")
    get :index
    assert_response :success
  end

end

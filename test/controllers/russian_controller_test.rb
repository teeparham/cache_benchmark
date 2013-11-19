require 'test_helper'

class RussianControllerTest < ActionController::TestCase
  test "should get index" do
    Cat.create(name: "bobo")
    get :index
    assert_response :success
  end

end

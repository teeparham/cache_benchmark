require 'test_helper'

class MonkeysControllerTest < ActionController::TestCase
  test "should get show" do
    monkey = Monkey.create(name: "bobo")
    get :show, id: monkey.id
    assert_response :success
  end

end

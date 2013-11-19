require 'test_helper'

class CatsControllerTest < ActionController::TestCase
  test "should get show" do
    cat = Cat.create(name: "toonces")
    get :show, id: cat.id
    assert_response :success
  end

end

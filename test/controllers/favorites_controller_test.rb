require "test_helper"

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  setup do
    login
    @megadrive = products(:megadrive)
    @switch = products(:switch)
  end

  test "should create my favorites" do
    get favorites_url

    assert_response :success
  end
  test "should create favorite" do
    assert_difference('Favorite.count', 1) do
      post favorites_url(product_id: @megadrive.id)
      assert_redirected_to product_path(@megadrive)
    end
  end
  test "should unfavorite" do
    assert_difference('Favorite.count', -1) do
      delete favorite_url(product_id: @switch.id)
      assert_redirected_to product_path(@switch)
    end
  end
end

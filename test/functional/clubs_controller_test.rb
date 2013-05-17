require 'test_helper'

class ClubsControllerTest < ActionController::TestCase
  setup do
    @club = clubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create club" do
    assert_difference('Club.count') do
      post :create, club: { created_at: @club.created_at, del_flg: @club.del_flg, description: @club.description, image_url: @club.image_url, name: @club.name, place_id: @club.place_id, updated_at: @club.updated_at }
    end

    assert_redirected_to club_path(assigns(:club))
  end

  test "should show club" do
    get :show, id: @club
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @club
    assert_response :success
  end

  test "should update club" do
    put :update, id: @club, club: { created_at: @club.created_at, del_flg: @club.del_flg, description: @club.description, image_url: @club.image_url, name: @club.name, place_id: @club.place_id, updated_at: @club.updated_at }
    assert_redirected_to club_path(assigns(:club))
  end

  test "should destroy club" do
    assert_difference('Club.count', -1) do
      delete :destroy, id: @club
    end

    assert_redirected_to clubs_path
  end
end

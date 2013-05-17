require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
  setup do
    @photo = photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo" do
    assert_difference('Photo.count') do
      post :create, photo: { club_id: @photo.club_id, created_at: @photo.created_at, del_flg: @photo.del_flg, description: @photo.description, name: @photo.name, tweet_tag: @photo.tweet_tag, updated_at: @photo.updated_at, user_token: @photo.user_token }
    end

    assert_redirected_to photo_path(assigns(:photo))
  end

  test "should show photo" do
    get :show, id: @photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photo
    assert_response :success
  end

  test "should update photo" do
    put :update, id: @photo, photo: { club_id: @photo.club_id, created_at: @photo.created_at, del_flg: @photo.del_flg, description: @photo.description, name: @photo.name, tweet_tag: @photo.tweet_tag, updated_at: @photo.updated_at, user_token: @photo.user_token }
    assert_redirected_to photo_path(assigns(:photo))
  end

  test "should destroy photo" do
    assert_difference('Photo.count', -1) do
      delete :destroy, id: @photo
    end

    assert_redirected_to photos_path
  end
end

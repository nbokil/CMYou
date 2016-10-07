require 'test_helper'

class OrgTagsControllerTest < ActionController::TestCase
  setup do
    @org_tag = org_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:org_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create org_tag" do
    assert_difference('OrgTag.count') do
      post :create, org_tag: { organization_id: @org_tag.organization_id, tag_id: @org_tag.tag_id }
    end

    assert_redirected_to org_tag_path(assigns(:org_tag))
  end

  test "should show org_tag" do
    get :show, id: @org_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @org_tag
    assert_response :success
  end

  test "should update org_tag" do
    patch :update, id: @org_tag, org_tag: { organization_id: @org_tag.organization_id, tag_id: @org_tag.tag_id }
    assert_redirected_to org_tag_path(assigns(:org_tag))
  end

  test "should destroy org_tag" do
    assert_difference('OrgTag.count', -1) do
      delete :destroy, id: @org_tag
    end

    assert_redirected_to org_tags_path
  end
end

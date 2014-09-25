require 'test_helper'

class PrincipalGroupesControllerTest < ActionController::TestCase
  setup do
    @principal_groupe = principal_groupes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:principal_groupes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create principal_groupe" do
    assert_difference('PrincipalGroupe.count') do
      post :create, principal_groupe: { name: @principal_groupe.name }
    end

    assert_redirected_to principal_groupe_path(assigns(:principal_groupe))
  end

  test "should show principal_groupe" do
    get :show, id: @principal_groupe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @principal_groupe
    assert_response :success
  end

  test "should update principal_groupe" do
    patch :update, id: @principal_groupe, principal_groupe: { name: @principal_groupe.name }
    assert_redirected_to principal_groupe_path(assigns(:principal_groupe))
  end

  test "should destroy principal_groupe" do
    assert_difference('PrincipalGroupe.count', -1) do
      delete :destroy, id: @principal_groupe
    end

    assert_redirected_to principal_groupes_path
  end
end

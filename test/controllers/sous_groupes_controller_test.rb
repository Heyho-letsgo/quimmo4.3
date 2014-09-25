require 'test_helper'

class SousGroupesControllerTest < ActionController::TestCase
  setup do
    @sous_groupe = sous_groupes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sous_groupes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sous_groupe" do
    assert_difference('SousGroupe.count') do
      post :create, sous_groupe: { nom: @sous_groupe.nom, principal_groupe_id: @sous_groupe.principal_groupe_id }
    end

    assert_redirected_to sous_groupe_path(assigns(:sous_groupe))
  end

  test "should show sous_groupe" do
    get :show, id: @sous_groupe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sous_groupe
    assert_response :success
  end

  test "should update sous_groupe" do
    patch :update, id: @sous_groupe, sous_groupe: { nom: @sous_groupe.nom, principal_groupe_id: @sous_groupe.principal_groupe_id }
    assert_redirected_to sous_groupe_path(assigns(:sous_groupe))
  end

  test "should destroy sous_groupe" do
    assert_difference('SousGroupe.count', -1) do
      delete :destroy, id: @sous_groupe
    end

    assert_redirected_to sous_groupes_path
  end
end

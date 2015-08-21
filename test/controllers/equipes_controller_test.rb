require 'test_helper'

class EquipesControllerTest < ActionController::TestCase
  setup do
    @equipe = equipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipe" do
    assert_difference('Equipe.count') do
      post :create, equipe: { data_fim: @equipe.data_fim, data_inicio: @equipe.data_inicio, projeto_id: @equipe.projeto_id, situacao: @equipe.situacao, user_id: @equipe.user_id }
    end

    assert_redirected_to equipe_path(assigns(:equipe))
  end

  test "should show equipe" do
    get :show, id: @equipe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipe
    assert_response :success
  end

  test "should update equipe" do
    patch :update, id: @equipe, equipe: { data_fim: @equipe.data_fim, data_inicio: @equipe.data_inicio, projeto_id: @equipe.projeto_id, situacao: @equipe.situacao, user_id: @equipe.user_id }
    assert_redirected_to equipe_path(assigns(:equipe))
  end

  test "should destroy equipe" do
    assert_difference('Equipe.count', -1) do
      delete :destroy, id: @equipe
    end

    assert_redirected_to equipes_path
  end
end

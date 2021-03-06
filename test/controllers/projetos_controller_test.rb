require 'test_helper'

class ProjetosControllerTest < ActionController::TestCase
  setup do
    @projeto = projetos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projetos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projeto" do
    assert_difference('Projeto.count') do
      post :create, projeto: { data_fim: @projeto.data_fim, data_inicio: @projeto.data_inicio, titulo: @projeto.titulo }
    end

    assert_redirected_to projeto_path(assigns(:projeto))
  end

  test "should show projeto" do
    get :show, id: @projeto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projeto
    assert_response :success
  end

  test "should update projeto" do
    patch :update, id: @projeto, projeto: { data_fim: @projeto.data_fim, data_inicio: @projeto.data_inicio, titulo: @projeto.titulo }
    assert_redirected_to projeto_path(assigns(:projeto))
  end

  test "should destroy projeto" do
    assert_difference('Projeto.count', -1) do
      delete :destroy, id: @projeto
    end

    assert_redirected_to projetos_path
  end
end

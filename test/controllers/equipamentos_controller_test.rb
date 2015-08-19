require 'test_helper'

class EquipamentosControllerTest < ActionController::TestCase
  setup do
    @equipamento = equipamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipamento" do
    assert_difference('Equipamento.count') do
      post :create, equipamento: { especificacao: @equipamento.especificacao, item: @equipamento.item, numero_serie: @equipamento.numero_serie, observacao: @equipamento.observacao, patrimonio: @equipamento.patrimonio }
    end

    assert_redirected_to equipamento_path(assigns(:equipamento))
  end

  test "should show equipamento" do
    get :show, id: @equipamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipamento
    assert_response :success
  end

  test "should update equipamento" do
    patch :update, id: @equipamento, equipamento: { especificacao: @equipamento.especificacao, item: @equipamento.item, numero_serie: @equipamento.numero_serie, observacao: @equipamento.observacao, patrimonio: @equipamento.patrimonio }
    assert_redirected_to equipamento_path(assigns(:equipamento))
  end

  test "should destroy equipamento" do
    assert_difference('Equipamento.count', -1) do
      delete :destroy, id: @equipamento
    end

    assert_redirected_to equipamentos_path
  end
end

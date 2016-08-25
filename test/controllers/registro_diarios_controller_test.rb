require 'test_helper'

class RegistroDiariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_diario = registro_diarios(:one)
  end

  test "should get index" do
    get registro_diarios_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_diario_url
    assert_response :success
  end

  test "should create registro_diario" do
    assert_difference('RegistroDiario.count') do
      post registro_diarios_url, params: { registro_diario: { data_registro: @registro_diario.data_registro } }
    end

    assert_redirected_to registro_diario_url(RegistroDiario.last)
  end

  test "should show registro_diario" do
    get registro_diario_url(@registro_diario)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_diario_url(@registro_diario)
    assert_response :success
  end

  test "should update registro_diario" do
    patch registro_diario_url(@registro_diario), params: { registro_diario: { data_registro: @registro_diario.data_registro } }
    assert_redirected_to registro_diario_url(@registro_diario)
  end

  test "should destroy registro_diario" do
    assert_difference('RegistroDiario.count', -1) do
      delete registro_diario_url(@registro_diario)
    end

    assert_redirected_to registro_diarios_url
  end
end

require 'test_helper'

class InscricaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inscricao = inscricaos(:one)
  end

  test "should get index" do
    get inscricaos_url, as: :json
    assert_response :success
  end

  test "should create inscricao" do
    assert_difference('Inscricao.count') do
      post inscricaos_url, params: { inscricao: { event_id: @inscricao.event_id, user_id: @inscricao.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show inscricao" do
    get inscricao_url(@inscricao), as: :json
    assert_response :success
  end

  test "should update inscricao" do
    patch inscricao_url(@inscricao), params: { inscricao: { event_id: @inscricao.event_id, user_id: @inscricao.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy inscricao" do
    assert_difference('Inscricao.count', -1) do
      delete inscricao_url(@inscricao), as: :json
    end

    assert_response 204
  end
end

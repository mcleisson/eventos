require 'test_helper'

class EventosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evento = eventos(:one)
  end

  test "should get index" do
    get eventos_url, as: :json
    assert_response :success
  end

  test "should create evento" do
    assert_difference('Evento.count') do
      post eventos_url, params: { evento: { data: @evento.data, descricao: @evento.descricao, hora: @evento.hora, local: @evento.local, titulo_evento: @evento.titulo_evento, vagas: @evento.vagas } }, as: :json
    end

    assert_response 201
  end

  test "should show evento" do
    get evento_url(@evento), as: :json
    assert_response :success
  end

  test "should update evento" do
    patch evento_url(@evento), params: { evento: { data: @evento.data, descricao: @evento.descricao, hora: @evento.hora, local: @evento.local, titulo_evento: @evento.titulo_evento, vagas: @evento.vagas } }, as: :json
    assert_response 200
  end

  test "should destroy evento" do
    assert_difference('Evento.count', -1) do
      delete evento_url(@evento), as: :json
    end

    assert_response 204
  end
end

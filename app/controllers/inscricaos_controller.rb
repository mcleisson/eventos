class InscricaosController < ApplicationController
  before_action :set_inscricao, only: [:show, :update, :destroy]

  # GET /inscricaos
  def index
    @inscricaos = Inscricao.all

    render json: @inscricaos
  end

  # GET /inscricaos/1
  def show
    render json: @inscricao
  end

  # POST /inscricaos
  def create
    @inscricao = Inscricao.new(inscricao_params)

    if @inscricao.save
      render json: @inscricao, status: :created, location: @inscricao
    else
      render json: @inscricao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inscricaos/1
  def update
    if @inscricao.update(inscricao_params)
      render json: @inscricao
    else
      render json: @inscricao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inscricaos/1
  def destroy
    @inscricao.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inscricao
      @inscricao = Inscricao.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def inscricao_params
      params.require(:inscricao).permit(:user_id, :event_id)
    end
end

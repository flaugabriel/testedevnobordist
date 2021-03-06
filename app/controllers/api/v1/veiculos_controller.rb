module Api
  module V1
    class VeiculosController < ApplicationController
      before_action :set_veiculo, only: [:show, :update, :destroy]

      # GET /veiculos
      def index
        @veiculos = Veiculo.all
        if @veiculos.present?
          render json: @veiculos
        else
          render json:{mensagem: 'Sem veiculos cadastrados!'}
        end
      end

      # GET /veiculos/1
      def show
        render json: @veiculo
      end

      # POST /veiculos
      def create
        @veiculo = Veiculo.new(veiculo_params)
        if @veiculo.save
          render json: @veiculo, status: :created
        else
          render json: @veiculo.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /veiculos/1
      def update
        if @veiculo.update(veiculo_params)
          render json: @veiculo
        else
          render json: @veiculo.errors, status: :unprocessable_entity
        end
      end

      # DELETE /veiculos/1
      def destroy
        @veiculo.destroy
        render json:{mensagem: 'Veiculo Deletado!'}
      end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_veiculo
        @veiculo = Veiculo.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def veiculo_params
        params.require(:veiculo).permit(:marca, :veiculo, :ano, :descricao, :vendido)
      end
    end
  end
end

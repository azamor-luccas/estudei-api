class PotentialClientController < ApplicationController
    
    def create
        potential_client =  PotentialClient.create(
                name: params[:name],
                email: params[:email],
                cpf: params[:cpf],
                client_type: "LANDING PAGE",
                cellphone: params[:cellphone],
                extras: params[:extras])

        if potential_client.valid?
            render json: "Client created", status: :ok
        else
            render json: potential_client.errors, status: :unprocessable_entity
        end
    end

end
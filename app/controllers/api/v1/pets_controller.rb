class Api::V1::PetsController < ApplicationController

    before_action :set_owner

    def index 
        @pets = @owner.pets

        render json: @pets
    end

    def show 
        set_pet
        
        render json: @pet
    end

    def create 
        @pet = @owner.pets.new(pet_params)
        if @pet.save
            render json: @owner
        else
            render json: { errors: @pet.errors.full_messages }
        end
    end

    def update 
        set_pet
        pet.update(pet_params)

        render json: @pet
    end

    def destroy
        set_pet
        @owner = Owner.find(@pet.owner_id)
        @pet.destroy

        render json: @owner
    end


    private

    def set_pet
        @pet = Pet.find_by(id: params[:id])
    end

    def set_owner
        @owner = Owner.find_by(id: params[:owner_id])
    end

    def pet_params
        params.require(:pet).permit(:name, :kind, :age, :breed, :owner_id)
    end

end

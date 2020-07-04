class Api::V1::OwnersController < ApplicationController

    def index 
        @owners = Owner.all

        render json: @owners
    end

    def show 
        set_owner
        
        render json: @owner
    end

    def create 
        @owner = Owner.new(owner_params)
        if @owner.save
            render json: @owner
        else
            render json: { errors: @owner.errors.full_messages }
        end
    end

    def update 
        set_owner
        owner.update(owner_params)

        render json: @owner
    end

    def destroy
        set_owner
        @owner.destroy

        render json: @owner
    end


    private

    def set_owner
        @owner = Owner.find_by(id: params[:id])
    end

    def owner_params
        params.require(:owner).permit(:name, :email)
    end

end

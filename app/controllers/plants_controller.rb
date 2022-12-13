class PlantsController < ApplicationController
    def index
        
        render json: Plant.all, only: plantObj, response: :accepted
    end

    def show
        render json: Plant.find(params[:id]), only: plantObj, response: :accepted
    end

    def create
        render json: Plant.create(plant_params), only: plantObj, response: :created
    end


    private
    def plantObj
        [:id, :name, :image, :price]
    end

    def plant_params
        params.permit(:name,:image,:price)
    end
end

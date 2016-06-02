class PetsController < ApplicationController
  def index
    # @food = Food.find(params[:food_id])
    @pets = Pet.all.order(:created_at)

    render json: @pets.to_json, status: :ok
  end

  def show
    @shelter = Shelter.find(params[:shelter_id])
    @winetypes = Pet.all.order(:created_at)

    render json: @pets.to_json, status: :ok
  end
  def create
    @shelter = Shelter.find(params[:shelter_id])
    @pet = @shelter.pets.build(pet_params)

    if @pet.save
      render json: @pet.to_json, status: :created
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      render json: @pet.to_json, status: :ok
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    render json: {message: "success"}, status: :ok
  end

  # private
  #    Never trust parameters from the scary internet, only allow the white list through.
  #   def wine_type_params
  #     params.require(:wine_type).permit(:type, :graphic_url, :food_id)
  #   end
end

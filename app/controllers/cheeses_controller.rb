class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  # GET /cheeses/:id
  def show
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese
    id: cheese.id,
    name: cheese.name,
    price: cheese.price,
    is_best_seller: cheese.is_best_seller,

  end
  
  def show_methodcheese = Cheese.find_by(id: params[:id])
    if cheese
      render json: cheese,except: [:created_at, updated]
    else 
      render json: {error: "Cheese not found"}, status: not_found
    end
  end



end

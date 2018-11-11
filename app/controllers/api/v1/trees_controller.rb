class Api::V1::TreesController < ApplicationController
  before_action :find_tree, only: [:update]

  def show
  end

  def index
    @trees = Tree.all
    render json: @trees
  end

  def update
    @tree.update(tree_params)
    if @tree.save
      render json: @tree, status: :accepted
    else
      render json: { errors: @tree.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def tree_params
    params.permit(:latitude, :longitude, :zipcode, :address, :health, :status, :tree_id)
  end

  def find_tree
    @tree = Tree.find(params[:id])
  end
end

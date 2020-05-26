class ZoosController < ApplicationController
  before_action :set_zoo, only:[:edit, :update, :destroy, :show]
  def index
    @zoos = Zoo.all
  end

  def show
  end

  def new
    @zoo = Zoo.new
  end

  def edit
  end

  private

  def set_zoo
    @zoo = Zoo.find(params[:id])
  end

  def zoo_params
    params.require(:zoo).permit(:name)
  end
end

class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.create(strong_params)
  end

  private

  def strong_params
    params.require(:list).permit(:name)
  end
end

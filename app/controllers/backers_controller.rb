class BackersController < ApplicationController
  before_action :set_backer, only: [:show, :edit, :update, :destroy]

  def index
    @backers = Backer.all
  end

  def show
  end

  def new
    @backer = Backer.new
  end

  def create
    @backer = Backer.create(post_params(:name, :total_wallet))
    redirect_to backer_path(@backer)
  end

  def edit
  end

  def update
    @backer.update(post_params(:total_wallet))
    redirect_to backer_path(@backer)
  end

  def contribute
  end

  def destroy
    @backer.destroy
    redirect_to backers_path
  end

  private
  def post_params(*args)
    params.require(:backer).permit(*args)
    # :name, :description, :goal
  end

  def set_backer
    @backer = Backer.find(params[:id])
  end


end

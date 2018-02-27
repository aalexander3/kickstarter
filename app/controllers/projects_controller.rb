class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :contribute, :add_contribution, :destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(post_params(:name, :description, :goal))
    redirect_to project_path(@project)
  end

  def edit
  end

  def update
    @backer = Backer.find(params[:backer][:backer_id])
    if @backer
      @backer.make_contribution(@project)
    else
      @project.update(post_params(:description, :goal))
    end
    redirect_to project_path(@project)
  end

  def contribute
    @backers = Backer.all
  end
  #
  # def add_contribution
  #
  # end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private
  def post_params(*args)
    params.require(:project).permit(*args)
    # :name, :description, :goal
  end

  def set_project
    @project = Project.find(params[:id])
  end
end

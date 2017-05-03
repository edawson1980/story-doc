class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @doc = Doc.find(params[:doc_id])
    @project = Project.new
  end

  def create
    @doc = Doc.find(params[:doc_id])
    @project = @doc.projects.create!(project_params)
    redirect_to doc_project_path(@doc, @project), notice: "Story created!"
  end

  def show
    @doc = Doc.find(params[:doc_id])
    @project = Project.find(params[:id])
  end

  def edit
    @doc = Doc.find(params[:doc_id])
    @project = Project.find(params[:id])
  end

  def update
    @doc = Doc.find(params[:doc_id])
    @project = Project.find(params[:id])
    if @project.doc == current_doc
      @project.update!(project_params)
    else
      flash[:alert] = "Only owner can edit"
    end
    redirect_to doc_project_path(@doc, @project)
  end

  def destroy
    @doc = Doc.find(params[:doc_id])
    @project = Project.find(params[:id])
    if @project.doc == current_doc
      @project.destroy
    else
      flash[:alert] = "Only owner can delete"
    end
    redirect_to doc_path(@doc)
  end

  private
  def project_params
    params.require(:project).permit(:title, :theme, :img_url, :body)
  end


end

class DocsController < ApplicationController

  before_action :set_session

  def set_session
    session[:history] ||= []
  end

  def index
    @docs = Doc.all
  end

  def new
    @doc = Doc.new
  end

  def create
    @doc = Doc.create!(doc_params.merge(doc: current_doc))
    redirect_to doc_path(@doc), notice: "Documentarian created!"
end

  def show
    @doc = Doc.find(params[:id])
    session[:history].push(@doc.name)
  end

  def edit
    @doc = Doc.find(params[:id])
  end

  def update
    @doc = Doc.find(params[:id])
    if @doc == current_doc
      @doc.update(doc_params)
    else
      flash[:alert] = "Only owner can edit"
    end
    redirect_to doc_path(@doc)
  end

  def destroy
    @doc = Doc.find(params[:id])
    if @doc == current_doc
      @doc.destroy
    else
      flash[:alert] = "Only owner can delete"
    end
    redirect_to docs_path
  end

  private
  def doc_params
    params.require(:doc).permit(:name, :location, :gender, :img_url)

  end

end

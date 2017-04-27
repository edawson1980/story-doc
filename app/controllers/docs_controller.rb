class DocsController < ApplicationController

  def index
    @docs = Doc.all
  end

  def new
    @doc = Doc.new
  end

  def create
    @doc = Doc.create!(doc_params)
    redirect_to doc_path(@doc)
  end

  def show
    @doc = Doc.find(params[:id])
  end

  def edit
    @doc = Doc.find(params[:id])
  end

  def update
    @doc = Doc.find(params[:id])
    @doc.update(doc_params)

    redirect_to doc_path(@doc)
  end

  def destroy
    @doc = Doc.find(params[:id])
    @doc.destroy

    redirect_to docs_path
  end

  private
  def doc_params
    params.require(:doc).permit(:name, :location, :gender, :img_url)
  end
  
end

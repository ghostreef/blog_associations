class TagsController < ApplicationController


  before_action :find_tag, only: [:show, :edit, :update, :destroy]

  def index
    @tags = Tag.all.order(:created_at)
  end

  def show

  end

  def new
    @tag = Tag.new

  end

  def edit
    
  end

  def create
    @tag = Tag.new(tag_params)

    if @tag.save
      redirect_to @tag, notice: 'Tag successfully created.'
    else
      flash[:error] = 'Failed to create tag.'
      render :new
    end
  end

  def update
    if @tag.update(tag_params)
      redirect_to @tag, notice: 'Tag successfully created.'
    else
      render :edit
    end
  end

  def destroy
    if @tag.destroy
      redirect_to tags_url, notice: 'Tag successfully destroyed.'
    else
      flash[:error] = 'Failed to destroy tag.'
      redirect_to tags_url
    end
  end

  private
  def find_tag
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:color, :tag)
  end

end

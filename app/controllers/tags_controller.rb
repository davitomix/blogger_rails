class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    @tag.save

    flash.notice = "Tag '#{@article.title}' Created!"

    redirect_to tag_path(@tag)
  end

  def destroy
    @tag = Tag.destroy(params[:id])

    flash.notice = "Tag '#{@tag.name}' Deleted!"

    redirect_to action: :index
  end
end

class TagsController < ApplicationController
include TagsHelper

before_filter :require_login, only: [:destroy]


  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tag = Tag.all
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tag_path(@tag)
  end

  def edit
    @tag = Tag.find(params[:id])
  end

end

class ParagraphsController < ApplicationController
  def new
  end

  def show
  end

  def create
    respond_to do |format|
      format.js {}
    end
  end
end

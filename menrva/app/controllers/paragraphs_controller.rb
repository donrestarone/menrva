class ParagraphsController < ApplicationController
  def new
  end

  def show
  end

  def create
    @paragraph = params["paragraph"]["body"]
    respond_to do |format|
      format.js {}
    end
  end
end

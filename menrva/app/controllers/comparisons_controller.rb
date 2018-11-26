class ComparisonsController < ApplicationController
  def new

  end

  def create
    @comparison = params["comparison"]["body"]
    respond_to do |format|
      format.js {}
    end
  end

  def show
  end
end

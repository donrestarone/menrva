class HomeController < ApplicationController
  def index
    @comparison = Comparison.new
    @paragraph = Paragraph.new
  end
end

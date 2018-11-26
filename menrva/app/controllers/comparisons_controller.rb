class ComparisonsController < ApplicationController
  def new

  end

  def create
    @comparison = params["comparison"]["body"]
    
    comparison = Comparison.new(body: @comparison.strip)

    if comparison
      # analyze
      @occurances = Analyzer.occurances_of_words(comparison.body, false)
      # debug- > remove duplicates from this
      @occurances_with_exceptions = Analyzer.occurances_of_words(comparison.body, true).uniq
      @summary = Analyzer.summarize(comparison.body, 4)
      respond_to do |format|
        format.js {}
      end
    else 
      redirect_to root_path
    end
  end

  def show
  end
end

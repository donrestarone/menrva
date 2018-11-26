class Comparison < ApplicationRecord
  def how_many_sentences?
    return self.body.split('.').count
  end
end

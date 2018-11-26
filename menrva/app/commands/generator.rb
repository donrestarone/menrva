class Generator

  def self.get_regexp_exclusion(word_to_exclude)
    tester = VerEx.new do
      start_of_line
      find word_to_exclude
      end_of_line
    end

    return tester.source
  end


end
class Analyzer

  def self.similarity(something, another_thing)
    corpus = Text::WhiteSimilarity.new
    return "there is a #{corpus.similarity(something, another_thing) * 100.0} similarity between the two inputs"
  end

  def self.get_word_stem(word)
    return Text::PorterStemming.stem(word)
  end

  def self.occurances_of_words(text, including_exclusions)
    # need to convert the return value to a hash key value pair
    headers = [:word, :frequency]
    occurances = WordsCounted.count(text).token_frequency.map{|row| headers.zip(row).to_h}

    exclusions = WordsCounted::Tokeniser.new(text)
    with_exclusions = exclusions.tokenise(exclude: Analyzer.exclusions)
    

    # pass false if you want to get occurances array of hashes, else return array of words minus exclusions
    if including_exclusions == true then return with_exclusions else return occurances end
  end

  def self.exclusions
    # return Generator.get_regexp_exclusion('and')
    # returns array of excluded words, eventually implement custom regexp
    return %w(and the a or of from on as we you)
  end


  def self.summarize(*texts)
    # if you pop the last position of the array you get the sentence length of the summary. Last index has to be integer
    sentence_length = texts.pop
    documents = Array.new
    texts.each do |text|
      documents.push(Epitome::Document.new(text))
    end

    corpus = Epitome::Corpus.new(documents)

    return corpus.summary(sentence_length)
  end

end
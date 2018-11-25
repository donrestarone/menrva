require 'text'
require 'words_counted'

resume = "Developed training and feedback systems for employees to ensure high service quality and consistency. Generated specifications and prototypes based on information collected from project owner's"


requirements = "Leading the design and implementation of new features, based on feedback you or others collect from users. Being both a creative/product and technical contributor, taking on leadership roles as we grow"




# p corpus.similarity(resume, requirements)

class Analyzer

  def self.similarity(something, another_thing)
    corpus = Text::WhiteSimilarity.new
    return "there is a #{corpus.similarity(something, another_thing) * 100.0} similarity between the two inputs"
  end

  def self.get_word_stem(word)
    return Text::PorterStemming.stem(word)
  end

  def self.occurances_of_words(text)
    # need to convert the return value to a hash key value pair
    headers = [:word, :frequency]
    return WordsCounted.count(text).token_frequency.map{|row| headers.zip(row).to_h}
  end
end

# # test 'text' similarity algorithm
p Analyzer.similarity(resume, requirements)
# # test 'text' word stem algorithm
p Analyzer.get_word_stem('implementation')



p "OCCURANCES OF WORDS"
Analyzer.occurances_of_words(requirements).each do |hash|
  p "#{hash[:word]} #{hash[:frequency]}"
end


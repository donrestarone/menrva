require 'text'
require 'words_counted'
require 'verbal_expressions'
require 'pry'
require 'epitome'





require './generators.rb'
require './analyzers.rb'

resume = "Developed training and feedback systems for employees to ensure high service quality and consistency. Generated specifications and prototypes based on information collected from project owner's"


requirements = "Leading the design and implementation of new features, based on feedback you or others collect from users. Being both a creative/product and technical contributor, taking on leadership roles as we grow"







# # # test 'text' similarity algorithm
# p Analyzer.similarity(resume, requirements)
# # # test 'text' word stem algorithm
# p Analyzer.get_word_stem('implementation')



# p "OCCURANCES OF WORDS"


# p Analyzer.occurances_of_words(requirements, false)




p Analyzer.summarize(resume, requirements, 4)

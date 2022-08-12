require 'pry'

class String

  def sentence?
    self[-1] == "."  # could be self.end_with?
  end

  def question?
    self.end_with?("?") 
  end

  def exclamation?
    self.end_with?("!") 
  end

  def count_sentences
    self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.length
  end
end
require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = self.split(/[\s.?!]/)
    binding.pry
    sentences.delete_if {|x| x == '.' || x == '?' || x == '?'}
    sentences.count
  end
end

class Anagram
    attr_reader :word
  
    def initialize(word)
      @word = word.downcase
    end
  
    def match(candidates)
      candidates.select { |candidate| anagram?(candidate) }
    end
  
    private
  
    def anagram?(candidate)
      candidate.downcase != word && candidate.downcase.chars.sort == word.chars.sort
    end
  end
  

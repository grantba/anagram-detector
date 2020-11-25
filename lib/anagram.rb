class Anagram

    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(some_words)
        some_words.select do |check_word|
            check_word.split("").sort == @word.split("").sort 
        end
    end

end

detector = Anagram.new('ba')
ba = detector.match(['ab', 'abc', 'bac'])
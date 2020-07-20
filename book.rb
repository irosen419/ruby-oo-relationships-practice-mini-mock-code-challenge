
class Book
    attr_reader :word_count
    attr_accessor :title, :author

    @@all = []

    def initialize(title, author, word_count)
        @title = title
        @author = author
        @word_count = word_count
        @@all << self
    end

    def self.all
        @@all
    end
end
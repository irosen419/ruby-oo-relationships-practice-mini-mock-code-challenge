
class Book
    attr_reader :word_count
    attr_accessor :title

    @@all = []

    def initialize(title, word_count)
        @title = title
        @word_count = word_count
        @@all << self
    end

    def self.all
        @@all
    end

    def new_publish(author)
        Publish.new(self, author)
    end

    def my_authors
        Publish.all.select {|publication| publication.author if publication.book == self}
    end
end
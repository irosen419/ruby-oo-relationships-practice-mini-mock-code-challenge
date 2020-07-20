
class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def write_book(title, word_count)
        Book.new(title, self, word_count)
    end

    def books
        Book.all.select {|book| book.author == self}
    end

    def total_words
        books.map {|book| book.word_count}.sum
    end

    def self.most_words
        self.all.max {|a, b| a.total_words <=> b.total_words}
    end

end
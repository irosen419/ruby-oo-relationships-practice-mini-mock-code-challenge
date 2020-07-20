
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

    def publish_book(title)
        Publish.new(title, self)
    end

    def my_books
        Publish.all.select {|publication| publication.book if publication.author == self}
    end

    def total_words
        my_books.map {|publication| publication.book.word_count}.sum
    end

    def self.most_words
        self.all.max {|a, b| a.total_words <=> b.total_words}
    end

end
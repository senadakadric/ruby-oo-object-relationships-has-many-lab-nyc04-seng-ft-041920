
class Post

    attr_reader :title
    attr_accessor :author, :name

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    # def author

    # end

    def author_name
        if self.author
            self.author.name
        else
            return nil
        end
    end

end
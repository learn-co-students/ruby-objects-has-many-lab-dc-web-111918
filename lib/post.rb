class Post
attr_reader :title, :author
attr_writer :author
@@all = []

def initialize(title)
  @title = title
  self.class.all << self
end

def self.all
  @@all
end

def author_name
  self.author ? self.author.name : nil
end



end

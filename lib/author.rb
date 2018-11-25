class Author
  attr_accessor :name, :posts, :author
  
  @@all =[]
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def self.all
    @@all
  end
  
  def add_post(title)
    title.author = self
    @posts << title
  end
  
  def add_post_by_title(title)
    new_title = Post.new(title)
    new_title.author = self
    self.posts << new_title
  end
  
  def self.post_count
    Post.all.count
  end
  
end
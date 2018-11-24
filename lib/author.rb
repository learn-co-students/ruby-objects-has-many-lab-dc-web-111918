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

  def new(name)
    author = Author.new(name)
    author
  end

  def posts
    # HEEELLPPP
   Post.all.select{|post| post.author = self}
 end

  def add_post(post)
  post.author = self
  #WHY DOES ADD_POST NEED POSTS
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end

  def self.post_count
    Post.all.count

  end


end

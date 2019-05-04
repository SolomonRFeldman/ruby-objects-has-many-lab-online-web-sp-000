class Author
  attr_accessor :name
  
  @@authors = []
  
  def initialize(name)
    @name = name
    @posts = []
    @@authors << self
  end
  
  def posts
    @posts
  end
  
  def add_post(post)
    post.artist = self
    @posts << post
  end
  
  def add_post_by_title(post_title)
    post = Post.new(song_name)
    post.artist = self
    @songs << post
  end
  
  def self.post_count
    post_count = 0
    @@authors.each do |author|
      song_count += author.posts.count
    end
    post_count
  end
  
end
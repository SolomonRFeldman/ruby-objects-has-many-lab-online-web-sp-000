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
  
  def add_post(post_)
    post_.artist = self
    @posts << post_
  end
  
  def add_post_by_title(post_title)
    post_ = Post.new(song_name)
    post_.artist = self
    @songs << post_
  end
  
  def self.post_count
    post_count = 0
    @@authors.each do |author|
      song_count += author.posts.count
    end
    post_count
  end
  
end
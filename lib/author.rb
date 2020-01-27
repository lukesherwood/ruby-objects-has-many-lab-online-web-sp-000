class Author
  attr_accessor :title, :author
  def initialize(title)
    @title = name
  end
  
  def posts
    Post.all.select{|s| s.author == self}
  end
  
  def add_post(post)
   
   post.author = self
   
  end
  
  def add_post_by_title(post)
    s = Post.new(post)
    s.author = self
    s.name = post
  
  end
  
  def self.post_count
    #returns the total number of songs associated to all existing artists
    Post.all.length
  end
  
end
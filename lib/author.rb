require 'pry'
class Author 
  
  attr_accessor :name, :post, :title
  
  def initialize(name)
    @name = name
  end 
  
  def posts 
    Post.all.select do  |post|
    post.author == self
    end
  end 
  
  def add_post(post)
    post.author = self
  end
  
  def post_by_title(post_title)
    post_title = Post.title.new(name)
    add_post(post_title)
   end
  
 # binding.pry
  def self.post_count
    Post.all.count
  end 
  
end 

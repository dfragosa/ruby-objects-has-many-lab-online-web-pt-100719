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
  
  def post_by_title
    
   end
  
 # binding.pry
  def self.post_count
    Post.all.count
  end 
  
end 

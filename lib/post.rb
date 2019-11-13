require 'pry'
class Post 
  
  attr_accessor :title, :author
  
  @@all = []
  
  
  def initialize(title)
    @title = title
    @@all  << self
  end 
  binding.pry
  def self.all 
    @@all
  end 

  def add_post(post)
    @posts << post
    posts.author = self
  end 
  
  def author_name (name = nil)
    self.author.name 
    
  end 
  
end 
class HomeController < ApplicationController
  def index
  end
  
  public 
  def write
    @orange = params[:title]
    @apple = params[:content]
    @mynum = params[:num]
    
    new_post=Post.new
    new_post.title=@orange
    new_post.content=@apple
    new_post.num = (1..45).to_a.sample(6)
    new_post.save
    
    @every_post = Post.all.order("id desc")
    #redirect_to "/list"
    

  end
  
  

end

class HomeController < ApplicationController

  def index
  	@posts = Post.all.reverse
  end

  def write
  	post = Post.new
  	post.title = params[:title]
  	post.content = params[:content]
  	# post = Post.new(title: params[:title], content: params[:content]) 
  	post.save
  	# Post.create(title: params[:title], content: params[:content]) 
  	redirect_to action: 'index' 	
  end

  def reply_write
  	reply = Reply.new
  	reply.content = params[:content]
  	reply.post_id = params[:post_id]
  	reply.save
  	redirect_to action: 'index'
  end	

end

class PostsController < ApplicationController
  
	#Route defined for this index action
	# the URL being /posts
  def index
  	@posts = Post.order('id DESC')
  end

  def show
  	@post = Post.find(params[:id])
  end #Auto load the app/views/posts/show.html.erb

  def new
  	@post = Post.new
  end
end

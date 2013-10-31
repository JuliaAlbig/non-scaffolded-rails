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
  end #Load the app/views/posts/new.html.erb

  def create
  	#Create a new post object with the data the user 
  	#submitted from the new view form.
  	@post = Post.new(params[:post])

  	if (@post.save)
  		redirect_to :action => :index
  	else
  		render :action => :new
  	end
  end # Only loads a view on error. Otherwise redirects

  def destroy
  	@post = Post.find(params[:id])
  	@post.destroy
  	redirect_to :action => :index
  end #This action has no associated view. It always redirects.
end

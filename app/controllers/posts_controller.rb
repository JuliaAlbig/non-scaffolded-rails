class PostsController < ApplicationController
  
	#Route defined for this index action
	# the URL being /posts
  def index
  	@posts = Post.order('id DESC')
  end
end

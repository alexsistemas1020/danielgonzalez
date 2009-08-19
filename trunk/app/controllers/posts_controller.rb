class PostsController < ApplicationController

  def add_comment
		@comment = Comment.new(params[:comment])
		@post = Post.find(params[:id])
		@comment.post = @post

    if @comment.save
      flash[:notice] = 'Your comment was submitted successfully.'
      redirect_to @post
    else
      render :action => 'show'
    end
  end

  # GET /posts
  # GET /posts.xml
  # GET /posts.rss
  # GET /posts/tagged_with/tag
  # GET /posts/tagged_with/tag.xml
  # GET /posts/tagged_with/tag.rss
  def index
    @comment = Comment.new
    if params[:tag]
      @posts = Post.tagged_with(params[:tag], :on => :tags)
    else
      @posts = Post.all
    end

    respond_to do |format|
      format.rss  { render :layout => false } # index.rss.erb
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.xml
  def show
    @comment = Comment.new
    @post = Post.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end
end

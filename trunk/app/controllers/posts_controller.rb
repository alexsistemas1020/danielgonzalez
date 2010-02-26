class PostsController < ApplicationController

  def add_comment
		@comment = Comment.new(params[:comment])
		@post = Post.find(params[:id])
		@comment.post = @post

    if verify_recaptcha(@comment) && @comment.save
      flash[:notice] = 'Your comment was submitted successfully.'
      redirect_to @post
    else
      render :action => 'show', :post => @post, :comment => @comment
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
    @posts = Post.all(:order => 'created_at DESC')
    
    respond_to do |format|
      format.html do # index.html.erb
        if params[:tag]
          @posts = Post.find_tagged_with(params[:tag], :order => "created_at DESC")
        end
      end
      format.rss  { render :layout => false } # index.rss.erb
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

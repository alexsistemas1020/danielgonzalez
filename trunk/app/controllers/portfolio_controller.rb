class PortfolioController < ApplicationController

  # GET /portfolio
  # GET /portfolio.xml
  def index
    respond_to do |format|
      format.html do # index.html.erb
        @projects = Project.paginate(:page => params[:page], :per_page => 2, :order => 'created_at DESC')
      end
      @projects = Project.all(:order => 'created_at DESC')
      format.xml  { render :xml => @projects }
    end
  end

  # GET /portfolio/new
  def new
    @project = Project.new
  end

  # POST /portfolio/new
  def create
    @project = Project.new(params[:project])

    if @project.save
      flash[:notice] = 'Your project was submitted successfully.'
      redirect_to portfolio_url
    else
      render :action => 'new', :project => @project
    end
  end
end

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
end

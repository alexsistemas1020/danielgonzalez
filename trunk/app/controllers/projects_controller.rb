class ProjectsController < ApplicationController

  # GET /projects
  # GET /projects.xml
  def index
    @projects = Project.paginate(:page => params[:page], :per_page => 2, :order => 'created_at DESC')
    respond_to do |format|
      format.html { @projects }
      format.js   { render :partial => 'projects' }
      format.xml  { render :xml => @projects }
    end
  end
end

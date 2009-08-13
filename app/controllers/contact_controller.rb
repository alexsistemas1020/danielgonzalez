class ContactController < ApplicationController
  
  def index
    @contact = Contact.new
  end

  def send_message
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      if @contact.save
        flash[:notice] = 'Message successfully sent.'
        format.html { redirect_to(root_url) }
        format.xml  { render :xml => @contact, :status => :created, :location => @contact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contact.errors, :status => :unprocessable_entity }
      end
    end
  end

end

class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      if @contact.save
        flash[:notice] = 'Message successfully sent.'
        format.html { redirect_to(new_contacts_url) }
        format.xml  { render :xml => @contact, :status => :created, :location => @contact }
      else
        flash[:notice] = 'Your Message could not be sent.'
        format.html { render :action => "new" }
        format.xml  { render :xml => @contact.errors, :status => :unprocessable_entity }
      end
    end
  end
end

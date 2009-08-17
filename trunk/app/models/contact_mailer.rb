class ContactMailer < ActionMailer::Base
  layout 'basic' # use basic_mailer.text.(html|plain).erb as the layout
  
  def contact_notification(contact)
    @recipients  = "dangt85@gmail.com"
    @from        = "#{contact.author} <#{contact.author_email}>"
    @subject     = contact.subject
    @sent_on     = Time.now
    @body[:contact] = contact
  end
end

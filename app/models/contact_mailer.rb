class ContactMailer < ActionMailer::Base
  def contact_notification(contact)
    @recipients  = "dangt85@gmail.com"
    @from        = "#{contact.name} <#{contact.email}>"
    @subject     = contact.subject
    @sent_on     = Time.now
    @body[:comment] = contact
    template 'comment_mailer/comment_notification'
  end
end

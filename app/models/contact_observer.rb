class ContactObserver < ActiveRecord::Observer
  def after_create(contact)
    ContactMailer.deliver_contact_notification(contact)
  end
end

class CommentMailer < ActionMailer::Base
  def comment_notification(comment)
    setup_email(comment)
    @subject    += 'Acomment has been submited to your post'
    @body[:url]  = "http://www.danielgonzalez.com.ve/"
  end
  
  protected
  def setup_email(object)
    @recipients  = "dangt85@gmail.com"
    @from        = "test@danielgonzalez.com.ve"
    @subject     = "Simple Blog"
    @sent_on     = Time.now
    @body[:object] = object
  end
end

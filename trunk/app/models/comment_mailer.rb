class CommentMailer < ActionMailer::Base
  def comment_notification(comment)
    setup_email(comment)
    @subject    += 'Acomment has been submited to your post'
    @body[:url]  = "http://danielgt.selfip.com/"
  end
  
  protected
  def setup_email(object)
    @recipients  = "dangt85@gmail.com"
    @from        = "test@simpleblog.com"
    @subject     = "Simple Blog"
    @sent_on     = Time.now
    @body[:object] = object
  end
end

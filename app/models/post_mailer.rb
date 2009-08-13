class PostMailer < ActionMailer::Base
  def post_notification(post)
    setup_email(post)
    @subject    += 'Testing post mailer'
    @body[:url]  = "http://danielgt.selfip.com/posts/#{post}"
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

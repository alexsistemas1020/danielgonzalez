class CommentMailer < ActionMailer::Base
  layout 'basic' # use basic_mailer.text.(html|plain).erb as the layout
  
  def comment_notification(comment)
    @recipients  = "dangt85@gmail.com"
    @from        = "#{comment.author} <#{comment.author_email}>"
    @subject     = 'A comment has been submited to your post'
    @sent_on     = Time.now
    @body[:comment] = comment
  end
end

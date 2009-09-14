class CommentMailer < ActionMailer::Base 
  def comment_notification(comment)
    @recipients  = "dangt85@gmail.com"
    @from        = "#{comment.author_name} <#{comment.author_email}>"
    @subject     = 'A comment has been submited'
    @sent_on     = Time.now
    @body[:comment] = comment
  end

  def comment_confirmation(comment)
    @recipients  = "#{comment.author_name} <#{comment.author_email}>"
    @from        = "Daniel González <contact@danielgonzalez.com.ve>"
    @subject     = 'Your comment has been recieved'
    @sent_on     = Time.now
    @body[:comment] = comment
  end
end

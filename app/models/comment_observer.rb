class CommentObserver < ActiveRecord::Observer
  def after_create(comment)
    CommentMailer.deliver_comment_notification(comment)
    CommentMailer.deliver_comment_confirmation(comment)
  end
end

class CommentObserver < ActiveRecord::Observer
  def after_create(comment)
    CommentMailer.deliver_comment_notification(comment)
  end
end

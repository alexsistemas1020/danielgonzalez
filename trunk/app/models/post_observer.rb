class PostObserver < ActiveRecord::Observer
  def after_create(post)
    PostMailer.deliver_post_notification(post)
  end
end

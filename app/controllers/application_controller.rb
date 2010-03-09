# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  #  before_filter :get_twitter_timeline

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  #  def get_twitter_timeline
  #    twitter = Twitter::Client.new(:login => 'dangt85', :password => 'm1cl4v3Ss')
  #    @my_timeline = twitter.timeline_for(:me, :count => 5)
  #  end
end

# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  def reload
    render :text => '<h3>Profile &amp; Overall Experience</h3>
            <p>
              I have experience in Linux and Windows environments, virtualization
              tools, configuring production, development and testing web environments.
              Capacity to write scripts for systems automation; basic knowledge
              of TCP/IP networking, load balancers, IDSs, and firewalls; experience
              working with system and network monitoring tools: <i>Syslogd</i>,
              <i>Firestarter/iptables</i>, <i>Ettercap</i>, <i>Wireshark</i>, and
              so on; experience with <i>MySQL</i> and <i>Oracle</i> database tools
              for design, development and administration; general working knowledge
              of <i>PL/SQL</i>.
            </p>'
  end
end

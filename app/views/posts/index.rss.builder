xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
xml.rss("version" => "2.0", "xmlns:dc" => "http://purl.org/dc/elements/1.1/") do
  xml.channel do
    xml.title "Daniel González"
    xml.link(url_for(:action => "index", :only_path => false))
    xml.language "en-us"
    xml.ttl "40"
    xml.description "Freelance web developer with open source technologies (Ruby on Rails, PHP and J2EE)"
    @posts.each do |post|
      xml.item do
        xml.title(h(post.title))
        xml.description(simple_format(h(post.body)))
        xml.pubDate(post.created_at.to_s(:rfc822))
        xml.guid(url_for(:action => "show", :id => post, :only_path => false))
        xml.link(url_for(:action => "show", :id => post, :only_path => false))
      end
    end
  end
end
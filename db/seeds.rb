# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

Project.create(:name => 'CrediXperto - ConsulCredit C.A.', :contact_email => 'asunciontb@credixperto.com',  :url => 'http://www.credixperto.com', :filename => 'credixperto.jpg',
  :description => 'Create, update, and maintain website pages using xHTML, JavaScript, and PHP/Drupal. Coordinate with producers and designers for major site changes. Maintain internal tools for managing site structure using PHP/Drupal tools. Work with third-party providers to ingest and integrate new modules, and generate content for use on ?intranet? web site. Assist with security testing, content administration, and Search Engine Optimization. Provide technical support for usability issues and critical site problems, as needed.')
Project.create(:name => 'Instituto Nacional de Tránsito y Transporte Terrestre', :contact_email => 'voxiro16@gmail.com',  :url => 'http://seat.googlecode.com', :filename => 'seat-intt.jpg',
  :description => 'Lead developer for support web site for register, audit and report generation on traffic accidents. Utilized contemporary design to create concise web site for specific client needs. Site creation included use of CSS, HTML, JavaScript, MySQL, and PHP. Incorporated pre-assembled web graphics, including logos and advertisements. Cross-browser compatibility checks and W3C web standards insurance.')
Project.create(:name => 'COMPAS - UCV', :contact_email => '',  :url => '', :filename => '', :description => '')
Project.create(:name => '', :contact_email => 'antonio.silva@ciens.ucv.ve',  :url => 'http://compas.ciens.ucv.ve', :filename => 'compasucv.jpg', :description => 'Primary responsibilities include design and develop a web application for manage the professional practices of the students at the Computer Science School of the Central University of Venezuela.
Re-designed and migrated the existing database.
Improved the preexisting application developed in Java (Struts) by using Ruby on Rails and adding new and improved functionalities.
')
Project.create(:name => 'Muebles y Tabiques Calvo S.R.L.', :contact_email => 'voxiro16@gmail.com',  :url => 'http://www.mytcalvo.com', :filename => 'mytcalvo.jpg',
  :description => 'Website advertising: Technical Direction - Creative Direction - PHP Programming - Database Design - MySQL Database - Layout XHTML - CSS 2.1; Internal system for recording and updating of data and Wall partition Furniture: Technical Direction - Creative Direction - PHP Programming - Database Design - MySQL Database - Layout XHTML - CSS 2.1

Intranet - Sistema de Acceso Restringuido

Intranet - Restrict Access System')
Project.create(:name => 'SISVOX', :contact_email => 'ccalvo@sisvox.com',  :url => 'http://www.sisvox.com', :filename => 'sisvox.jpg', :description => 'Guidelines SISVOX website where you submit the work, client portfolio, news of interest, among others.')

c = Comment.create(:content => '<object width="380" height="307"><param name="movie" value="http://www.youtube.com/v/Tfi8fT9oHkQ&hl=es_ES&fs=1&"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/Tfi8fT9oHkQ&hl=es_ES&fs=1&" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="380" height="307"></embed></object>',
  :author_name => 'Daniel', :author_email => 'contact@danielgonzalez.com.ve', :author_url => 'http://www.danielgonzalez.com.ve', :status => 'approved')
Post.create(:title => 'The Begining Of All Things To Come', :comments => [c],
  :body => 'This is my first post ever, so I will try to cut to the chase. I have built this personal website with the help of my great friend Ruby On Rails. I used a great CSS template to get started and began to add some nice features such as Google Analytics, Re-captcha, a simple blog with pagination and a contact form with a mailer. I will be doing more improvements and continue to add some other very nice features as the time lets me. So giggity giggity, giggity goo... Stick around!')

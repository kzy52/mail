# -*- coding: utf-8 -*-

require 'net/smtp'
require 'tlsmail'

content = <<EOF
From: kzy52m@gmail.com
To: kzy52m@gmail.com
Subject: Hello!
Date: #{Time.now}
How are you.
EOF


Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)
Net::SMTP.start("smtp.gmail.com",587,"gmail.com",'kzy52m@gmail.com','password',"login") do |smtp|
	smtp.send_message(content, 'kzy52m@gmail.com', 'kzy52m@gmail.com')
end

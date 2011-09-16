ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "railscasts.com",
  :user_name            => "abel.zhou@focusbeijing.com",
  :password             => "godislove412",
  :authentication       => "plain",
  :enable_starttls_auto => true
}


 # ActionMailer::Base.smtp_settings = {
 #   :address              => "smtp.163.com",
 #   :port                 =>  25,
 #   :domain               => "localhost:3000",
 #   :user_name            => "perfectlovej",
 #   :password             => "godislove412",
 #   :authentication       => "plain",
 #   #if got the same error with me,please change the options false
 #   :enable_starttls_auto => true
 #  }
ActionMailer::Base.default_url_options[:host] = "localhost:8888"
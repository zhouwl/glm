class GlmMailer < ActionMailer::Base
  default from: "zhouwl_nb@163.com"
  
  def test_mail
    mail(:to => "zhouwl_nb@163.com", :subject => "test_mail!!!") do |format|
      format.html { render :text => "hello,Abel. this is a test mail!" }
    end
  end
end

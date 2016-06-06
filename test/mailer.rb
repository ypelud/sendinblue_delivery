require 'action_mailer'

class Mailer < ActionMailer::Base

  def test_email(mail)
    mail(
      sender: mail,
      to: mail,
      from: mail,
      subject: "[test] SendInBlue") do |format|
        format.text { render plain: "Hello from SendInBlue!" }
        format.html { render html: "<h1>Hello from SendInBlue!</h1>".html_safe }
      end
  end

end

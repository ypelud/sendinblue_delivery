require 'minitest/autorun'
require 'mailer'
require 'sendinblue_delivery'
require 'byebug'

ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.add_delivery_method :sendinbluemail, SendinblueDelivery

ActionMailer::Base.sendinbluemail_settings = {
  url: 'https://api.sendinblue.com/v2.0',
  key: ENV['SENDINBLUE_KEY'] || 'your key',
  timeout: 5
}

Mailer.delivery_method = :sendinbluemail


class SendinBlueTest < Minitest::Test

  def test_deliver
    message = Mailer.test_email(ENV['SENDINBLUE_MAIL']).deliver_now
  end

end

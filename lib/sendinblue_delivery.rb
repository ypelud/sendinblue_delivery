require 'sendinblue'


class SendinblueDelivery

  def initialize(settings)
    @settings = settings
  end

  def deliver!(message)
    plain_part = message.multipart? ? (message.text_part ? message.text_part.body.decoded : nil) : message.body.decoded
    html_part = message.html_part ? message.html_part.body.decoded : nil

    data = {
      "to" => { message.to.first => message.to.first },
      "from" => message.from,
      "subject" => message.subject,
      "text" => plain_part,
      "html" => html_part
    }
    
    # "cc" => { message.cc.first => message.cc.first },
    # "bcc" => { message.bcc.first => message.bcc.first },


    m = Sendinblue::Mailin.new(@settings[:url],@settings[:key],@settings[:timeout])   #Optional parameter: Timeout in Secs
    m.send_email(data)

  end
end

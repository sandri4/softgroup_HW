require 'mail'
module Service
  class Deliver
    def sms(recepient)
      puts "Sending Sms to #{recepient}"
    end

    def email(recepient)
      puts "Sending Email to #{recepient}"
      # mail = Mail.new do
      #   from    "{recepient}"
      #   to      'you@@gmail.com'
      #   subject 'This is a test email'
      #   body    File.read('body.txt')
      # end
      # mail.deliver!
    end
  end
end

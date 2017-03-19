require_relative 'notification_module.rb'

class Sms
  include Notification

  def send_message(number)
    num = number =~ /^\+\d{12}/
    raise StandartError, 'Number you`ve input is not correct' if num != 0
  rescue StandardError
    p 'An error has occured, check log'
    add_to_log(number)
  else
    super
  end
end

require_relative 'sms.rb'
require_relative 'email.rb'

p 'correct mail'
Email.new.send_message('kek@mail.ru')
p 'incorrect mail'
Email.new.send_message('kekmail.ru')
p 'correct number'
Sms.new.send_message('+380675171488')
p 'incorrect number'
Sms.new.send_message('0675171488')

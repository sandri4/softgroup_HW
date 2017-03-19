require_relative 'service_module.rb'
module Notification
  def self.included(base)
    base.extend(ClassMethods)
  end

  def send_message(recepient)
    yield if block_given?
    Service::Deliver.new.send(self.class.to_s.downcase, recepient)
  end

  def add_to_log(recepient)
    open("#{self.class}.log", 'a') do |file|
      file.write("#{recepient} got an error\n")
    end
  end

  module ClassMethods
    def log
      open("#{name}.log", 'r') do |file|
        puts file.read
      end
    end
  end
end

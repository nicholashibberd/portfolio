class Notifier < ActionMailer::Base
  default from: "notifier@nicholashibberd.co.uk"
  
  def notification(message)
    @message = message
    mail(:to => 'nicholashibberd@gmail.com', :subject => "Someone has sent you a message!")
  end
end

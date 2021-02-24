require 'net/http'
class Notifier
  def notify(msg)
    # Post to webhook
    puts "Slack: #{msg}"
  end
end
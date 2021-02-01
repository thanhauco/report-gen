require 'rufus-scheduler'
require_relative 'lib/config'
require_relative 'lib/data_source'
require_relative 'lib/pdf_generator'
require_relative 'lib/emailer'
config = Config.load
scheduler = Rufus::Scheduler.new
scheduler.every config['schedule'] do
  data = DataSource.new.fetch
  PdfGenerator.new.generate(data, 'output/report.pdf')
  Emailer.new.send('output/report.pdf', config['email'])
  puts 'Job run'
end
scheduler.join
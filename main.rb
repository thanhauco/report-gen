require 'rufus-scheduler'
require_relative 'lib/data_source'
require_relative 'lib/pdf_generator'
require_relative 'lib/emailer'
scheduler = Rufus::Scheduler.new
scheduler.every '1m' do
  data = DataSource.new.fetch
  PdfGenerator.new.generate(data, 'output/report.pdf')
  Emailer.new.send('output/report.pdf', 'admin@example.com')
  puts 'Job run'
end
scheduler.join
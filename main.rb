require_relative 'lib/data_source'
require_relative 'lib/pdf_generator'
require_relative 'lib/csv_generator'
require_relative 'lib/emailer'
data = DataSource.new.fetch
PdfGenerator.new.generate(data, 'output/report.pdf')
Emailer.new.send('output/report.pdf', 'admin@example.com')
puts 'Done'
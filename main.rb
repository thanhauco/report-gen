require_relative 'lib/data_source'
require_relative 'lib/pdf_generator'
require_relative 'lib/csv_generator'
data = DataSource.new.fetch
PdfGenerator.new.generate(data, 'output/report.pdf')
CsvGenerator.new.generate(data, 'output/report.csv')
puts 'Generated'
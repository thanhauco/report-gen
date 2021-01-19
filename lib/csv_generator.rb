require 'csv'
class CsvGenerator
  def generate(data, filename)
    CSV.open(filename, 'w') do |csv|
      csv << data.first.keys
      data.each { |row| csv << row.values }
    end
  end
end
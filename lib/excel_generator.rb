require 'caxlsx'
class ExcelGenerator
  def generate(data, filename)
    p = Axlsx::Package.new
    p.workbook.add_worksheet(:name => "Report") do |sheet|
      sheet.add_row data.first.keys
      data.each { |row| sheet.add_row row.values }
    end
    p.serialize(filename)
  end
end
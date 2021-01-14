require 'prawn'
class PdfGenerator
  def generate(data, filename)
    Prawn::Document.generate(filename) do
      text 'Report'
      data.each { |row| text row.inspect }
    end
  end
end
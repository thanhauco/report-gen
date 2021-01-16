require 'prawn'
require 'prawn/table'
class PdfGenerator
  def generate(data, filename)
    Prawn::Document.generate(filename) do
      text 'Report', size: 20, style: :bold
      move_down 20
      table([data.first.keys] + data.map(&:values))
    end
  end
end
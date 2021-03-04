require 'rtesseract'
class Ocr
  def read(image_path)
    RTesseract.new(image_path).to_s
  end
end
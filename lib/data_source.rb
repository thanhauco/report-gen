require 'csv'
class DataSource
  def fetch
    CSV.read('data.csv', headers: true).map(&:to_h)
  end
end
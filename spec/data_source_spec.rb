require 'data_source'
describe DataSource do
  it 'fetches data' do
    expect(DataSource.new.fetch).not_to be_empty
  end
end
require 'yaml'
class Config
  def self.load
    YAML.load_file('config.yml')
  end
end
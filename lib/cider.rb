require 'cider/version'
require 'cider/seed_loader'
require 'cider/railtie'
require 'cider/migration'
require 'cider/cider'

module Cider
  def self.load
    files.each { |file| ::Cider::SeedLoader.load file }
  end

  def self.files
    Dir["#{directory}/*.rb"].sort
  end

  def self.directory
    "#{Rails.root}/db/ciders"
  end
end

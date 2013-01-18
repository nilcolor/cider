module Cider
  class SeedLoader
    def self.load(path)
      SeedLoader.new(path).load
    end

    def initialize(path)
      @path = path
    end

    def load
      return if loaded?
      print "Loading #{filename}... "
      super @path
      ::Cider::Cider.create! name: filename
      puts 'done'
    rescue => e
      puts "Error loading #{filename}"
      puts e.backtrace
    end

    def loaded?
      ::Cider::Cider.where(name: filename).exists?
    end

    def filename
      @filename ||= File.basename(@path, '.rb')
    end
  end
end
require "neo4j-advanced/version"


module Neo4j
  module Advanced

    def self.jars_root
      "#{File.dirname(__FILE__)}/neo4j-advanced/jars"
    end

    def self.load_jars!
      require 'java'
      puts jars_root
      Dir["#{jars_root}/*.jar"].each {|jar| require jar }
    end

  end
end

Neo4j::Advanced.load_jars!


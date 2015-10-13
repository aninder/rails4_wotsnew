#!/usr/bin/env ruby
require 'thor'

# class App
#   def initialize(argv)
#     send argv[0]()
#   end
#   def hello
#     puts "balle balle"
#   end
# end
# App.new ARGV
class App < Thor
  include Thor::Actions
  desc "hell0", "prints hello to screen"
  # argument :word, :default => "word1"
  argument :word2, :default => "word2",:type=>:array
  option :opt, :type=>:boolean, :aliases=>["-o"]
  def hello
    puts "hello #{word2} and hello  #{options[:opt]}"
    # create_file "hello.temp"
    # insert_into_file "hello.temp", "balle balle",:after=>""
    # prepend_to_file "hello.temp", "#{Time.new}\n"
    # comment_lines "hello.temp", /balle/
    inject_into_class "hello.temp", :Hello, "def hello\n puts 'hello'\n end;"
    # insert_into_file "hello.temp", :after => "Rails::Initializer.run do |config|\n" do
    #   gems = ask "Which gems would you like to add?"
    #   gems.split(" ").map{ |gem| "  config.gem :#{gem}" }.join("\n")
    # end

  end
  App.start ARGV
end
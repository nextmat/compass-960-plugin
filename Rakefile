require 'fileutils'
require 'sass'
require 'lib/ninesixty/sass_extensions'

begin
  require 'echoe'
 
  Echoe.new('compass-960-plugin', open('VERSION').read) do |p|
    # p.rubyforge_name = '960'
    p.summary = "Compass compatible Sass port of 960.gs."
    p.description = "The 960 Grid System is an effort to streamline web development workflow by providing commonly used dimensions, based on a width of 960 pixels. http://960.gs/"
    p.url = "http://github.com/chriseppstein/compass-960-plugin"
    p.author = ['Chris Eppstein']
    p.email = "chris@eppsteins.net"
    p.dependencies = ["chriseppstein-compass"]
    p.has_rdoc = false
  end
 
rescue LoadError => boom
  puts "You are missing a dependency required for meta-operations on this gem."
  puts "#{boom.to_s.capitalize}."
end

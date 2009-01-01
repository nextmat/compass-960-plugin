require 'fileutils'
require 'sass'
require 'lib/ninesixty/sass_extensions'

Ninesixty = File.read('sass/960/grid.sass')
Reset = File.read('sass/960/reset.sass')
Text = File.read('sass/960/text.sass')

LoadPaths = [File.expand_path(File.join( File.dirname(__FILE__), 'sass', '960' ))]

out = 'css'; Out = File.expand_path(File.join( File.dirname(__FILE__), out ))
FileUtils.mkdir_p(Out) unless File.directory?(Out)

task :ninesixty => :'ninesixty:standard'
namespace :ninesixty do
  desc "Generates a standard, uncompressed, nested output."
  task :standard do
    File.open( File.join(Out, '960.css'), File::WRONLY|File::TRUNC|File::CREAT ) do |f|
      f.puts Sass::Engine.new(Ninesixty, :style => :nested, :load_paths => LoadPaths).render
      f.close
    end
  end

  desc "Generates an old-skool human-written CSS output, with no nesting."
  task :flat do
    File.open( File.join(Out, '960.css'), File::WRONLY|File::TRUNC|File::CREAT ) do |f|
      f.puts Sass::Engine.new(Ninesixty, :style => :expanded, :load_paths => LoadPaths).render
      f.close
    end
  end

  desc "Generates a compressed output, light but not obfuscated"
  task :micro do
    File.open( File.join(Out, '960.css'), File::WRONLY|File::TRUNC|File::CREAT ) do |f|
      f.puts Sass::Engine.new(Ninesixty, :style => :expanded, :load_paths => LoadPaths).render
      f.close
    end
  end

  desc "Generates a super-compressed output"
  task :nano do
    File.open( File.join(Out, '960.css'), File::WRONLY|File::TRUNC|File::CREAT ) do |f|
      f.puts Sass::Engine.new(Ninesixty, :style => :expanded, :load_paths => LoadPaths).render
      f.close
    end
  end
end

task :text => :'text:standard'
namespace :text do
  desc "Generates a standard, uncompressed, nested output."
  task :standard do
    File.open( File.join(Out, 'reset.css'), File::WRONLY|File::TRUNC|File::CREAT ) do |f|
      f.puts Sass::Engine.new(Reset, :style => :nested, :load_paths => LoadPaths).render
      f.close
    end
  end

  desc "Generates an old-skool human-written CSS output, with no nesting."
  task :flat do
    File.open( File.join(Out, 'reset.css'), File::WRONLY|File::TRUNC|File::CREAT ) do |f|
      f.puts Sass::Engine.new(Reset, :style => :expanded, :load_paths => LoadPaths).render
      f.close
    end
  end

  desc "Generates a compressed output, light but not obfuscated"
  task :micro do
    File.open( File.join(Out, 'reset.css'), File::WRONLY|File::TRUNC|File::CREAT ) do |f|
      f.puts Sass::Engine.new(Reset, :style => :expanded, :load_paths => LoadPaths).render
      f.close
    end
  end

  desc "Generates a super-compressed output"
  task :nano do
    File.open( File.join(Out, 'reset.css'), File::WRONLY|File::TRUNC|File::CREAT ) do |f|
      f.puts Sass::Engine.new(Reset, :style => :expanded, :load_paths => LoadPaths).render
      f.close
    end
  end
end

task :reset => :'reset:standard'
namespace :reset do
  desc "Generates a standard, uncompressed, nested output."
  task :standard do
    File.open( File.join(Out, 'text.css'), File::WRONLY|File::TRUNC|File::CREAT ) do |f|
      f.puts Sass::Engine.new(Text, :style => :nested, :load_paths => LoadPaths).render
      f.close
    end
  end

  desc "Generates an old-skool human-written CSS output, with no nesting."
  task :flat do
    File.open( File.join(Out, 'text.css'), File::WRONLY|File::TRUNC|File::CREAT ) do |f|
      f.puts Sass::Engine.new(Text, :style => :expanded, :load_paths => LoadPaths).render
      f.close
    end
  end

  desc "Generates a compressed output, light but not obfuscated"
  task :micro do
    File.open( File.join(Out, 'text.css'), File::WRONLY|File::TRUNC|File::CREAT ) do |f|
      f.puts Sass::Engine.new(Text, :style => :expanded, :load_paths => LoadPaths).render
      f.close
    end
  end

  desc "Generates a super-compressed output"
  task :nano do
    File.open( File.join(Out, 'text.css'), File::WRONLY|File::TRUNC|File::CREAT ) do |f|
      f.puts Sass::Engine.new(Text, :style => :expanded, :load_paths => LoadPaths).render
      f.close
    end
  end
end

task :all => :'all:standard'
namespace :all do
  desc "Generates a standard, uncompressed, nested output."
  task :standard => [:'ninesixty:standard', :'text:standard', :'reset:standard']

  desc "Generates an old-skool human-written CSS output, with no nesting."
  task :flat => [:'ninesixty:flat', :'text:flat', :'reset:flat']

  desc "Generates a compressed output, light but not obfuscated"
  task :micro => [:'ninesixty:micro', :'text:micro', :'reset:micro']

  desc "Generates a super-compressed output"
  task :nano => [:'ninesixty:nano', :'text:nano', :'reset:nano']
end
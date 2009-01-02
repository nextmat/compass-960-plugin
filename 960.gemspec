Gem::Specification.new do |s|
  s.name = %q{960}
  s.version = "0.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Elliot Cable, Chris Eppstein"]
  s.date = %q{2009-01-01}
  s.description = %q{The 960 Grid System is an effort to streamline web development workflow by providing commonly used dimensions, based on a width of 960 pixels. http://960.gs/}
  s.email = %q{me@elliottcable.name}
  s.extra_rdoc_files = ["lib/ninesixty/compass_plugin.rb", "lib/ninesixty/sass_extensions.rb", "lib/ninesixty.rb", "README.mkdn"]
  s.files = ["960.gemspec", "lib/ninesixty/compass_plugin.rb", "lib/ninesixty/sass_extensions.rb", "lib/ninesixty.rb", "Manifest", "Rakefile", "README.mkdn", "sass/960/_grid.sass", "sass/960/_text.sass", "sass/960/utilities/_clear.sass", "sass/960/utilities/_reset.sass", "templates/project/grid.sass", "templates/project/text.sass", "templates/standalone/grid.sass", "templates/standalone/reset.sass", "templates/standalone/text.sass", "VERSION"]
  s.homepage = %q{http://github.com/chriseppstein/960}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "960", "--main", "README.mkdn"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{960}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Compass compatible Sass port of 960.gs.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_runtime_dependency(%q<haml>, [">= 0"])
      s.add_runtime_dependency(%q<chriseppstein-compass>, [">= 0"])
      s.add_development_dependency(%q<echoe>, [">= 0"])
    else
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<chriseppstein-compass>, [">= 0"])
      s.add_dependency(%q<echoe>, [">= 0"])
    end
  else
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<chriseppstein-compass>, [">= 0"])
    s.add_dependency(%q<echoe>, [">= 0"])
  end
end

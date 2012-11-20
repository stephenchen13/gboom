# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','gboom','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'gboom'
  s.version = GBoom::VERSION
  s.author = 'Stephen Chen'
  s.email = 'stephenchen13@gmail.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
# Add your other files here if you make them
  s.files = %w(
bin/gist
lib/gist/version.rb
lib/gist.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','gboom.rdoc']
  s.rdoc_options << '--title' << 'gboom' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'gboom'
  s.add_dependency('clipboard', '1.0.1')
  s.add_dependency('github_api', '0.8.1' )
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.4.1')
end

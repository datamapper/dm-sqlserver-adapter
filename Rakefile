require 'rubygems'
require 'rake'

begin

  require 'jeweler'

  Jeweler::Tasks.new do |gem|
    gem.name        = 'dm-sqlserver-adapter'
    gem.summary     = 'Microsoft SQL Server Adapter for DataMapper'
    gem.description = gem.summary
    gem.authors     = ["Dan Kubb"]
    gem.email       = %q{dan.kubb@gmail.com}
    gem.homepage    = 'http://github.com/datamapper/dm-sqlserver-adapter'

    gem.add_dependency 'do_sqlserver',      '~> 0.10.2'
    gem.add_dependency 'dm-do-adapter',     '~> 1.0.0.rc1'

    gem.add_development_dependency 'rspec', '~> 1.3'
  end

  Jeweler::GemcutterTasks.new

  FileList['tasks/**/*.rake'].each { |task| import task }
rescue LoadError
  puts 'Jeweler (or a dependency) not available. Install it with: gem install jeweler'
end

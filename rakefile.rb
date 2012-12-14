$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'

desc "Run rspec for matriz"
task :spec do
sh "rspec -Ilib spec/matriz_spec.rb --format documentation"
end


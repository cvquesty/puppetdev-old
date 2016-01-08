source 'https://rubygems.org'

if ENV.key?('PUPPET_VERSION')
  puppetversion = "=#{ENV['PUPPET_VERSION']}"
else
  puppetversion = ['>= 2.7']
end

gem 'rake'
gem 'puppet-lint', '>= 1.0.0'
gem 'rspec-puppet'
gem 'puppetlabs_spec_helper', '>= 0.8.2'
gem 'puppet', puppetversion
gem 'facter', '>= 1.7.0'

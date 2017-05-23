# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'postgres_ha_admin/version'

Gem::Specification.new do |spec|
  spec.name          = "postgres_ha_admin"
  spec.version       = PostgresHaAdmin::VERSION
  spec.authors       = ["ManageIQ Developers"]

  spec.summary       = "PostgreSQL High Availability Administration"
  spec.description   = "PostgreSQL High Availability Administration"
  spec.homepage      = "https://github.com/ManageIQ/postgres_ha_admin"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "manageiq-gems-pending"

  spec.add_runtime_dependency "activesupport",           ">= 5.0", "< 5.1"
  spec.add_runtime_dependency "linux_admin",             "~>0.20.1"
  spec.add_runtime_dependency "pg",                      "~>0.18.2"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
end

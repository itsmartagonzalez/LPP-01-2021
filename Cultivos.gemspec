require_relative 'lib/Cultivos/version'

Gem::Specification.new do |spec|
  spec.name          = "Cultivos"
  spec.version       = Cultivos::VERSION
  spec.authors       = ["Marta Gonzalez"]
  spec.email         = ["alu0101254487@ull.edu.es"]

  spec.summary       = %q{}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/itsmartagonzalez/LPP-01-2021.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/itsmartagonzalez/LPP-01-2021.git"
  spec.metadata["changelog_uri"] = "https://github.com/itsmartagonzalez/LPP-01-2021.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  #set dependencies
  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "coveralls"
end

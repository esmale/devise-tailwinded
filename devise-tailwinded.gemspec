
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "devise/tailwinded/version"

Gem::Specification.new do |spec|
  spec.name          = "devise-tailwinded"
  spec.version       = Devise::Tailwinded::VERSION
  spec.authors       = ["David Hill"]
  spec.email         = ["david.esmale@gmail.com"]

  spec.summary       = %q{Generates nicer views for Devise that use Tailwind}
  spec.description   = %q{Generates nicer default views styled with Tailwind CSS so you have a bit of a better starting point for your app.}
  spec.homepage      = "https://github.com/esmale/devise-tailwinded"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/esmale/devise-tailwinded"
    spec.metadata["changelog_uri"] = "https://github.com/esmale/devise-tailwinded"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

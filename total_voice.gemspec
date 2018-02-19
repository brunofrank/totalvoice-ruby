
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "total_voice/version"

Gem::Specification.new do |spec|
  spec.name          = "total_voice"
  spec.version       = TotalVoice::VERSION
  spec.authors       = ["Bruno Frank"]
  spec.email         = ["bfscordeiro@gmail.com"]

  spec.summary       = %q{Gem para acesso as API's da TotalVoice, esta gem foi renomeada para total_voice https://rubygems.org/gems/total_voice}
  spec.homepage      = "https://github.com/brunofrank/totalvoice-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "httparty", "~> 0.16"
end

# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "hilltok"
  spec.version       = "0.1.0"
  spec.authors       = ["OGtrilliams"]
  spec.email         = ["tribecca@tribecc.us"]

  spec.summary       = "Minimal single-page layout with notebook theme."
  spec.homepage      = "https://trilliams.sh/hilltok"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.3"
end

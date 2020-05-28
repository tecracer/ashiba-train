lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "<%= name %>/version"

Gem::Specification.new do |spec|
  spec.name          = "<%= name %>"
  spec.version       = TrainPlugins::<%= name.split('-').last.capitalize %>::VERSION
  spec.authors       = ["<%= author %>"]
  spec.email         = ["<%= email %>"]
  spec.summary       = "<%= summary %>"
  spec.description   = "<%= description %>"
  spec.homepage      = "https://github.com/your_org/<%= name %>"
  spec.license       = "Apache-2.0"

  spec.files = %w{
    README.md <%= name %>.gemspec Gemfile
  } + Dir.glob(
    "lib/**/*", File::FNM_DOTMATCH
  ).reject { |f| File.directory?(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "train", "~> 2.0"
  # ...

  spec.add_development_dependency "bump", "~> 0.8"
end

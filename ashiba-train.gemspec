Gem::Specification.new do |spec|
  spec.name        = 'ashiba-train'
  spec.version     = '1.0.0'
  spec.licenses    = ['Apache-2.0']

  spec.summary     = 'Ashiba template for Train transports'
  spec.description = 'Sets up new projects for Train transports'
  spec.authors     = ['Thomas Heinen']
  spec.email       = ['theinen@tecracer.de']
  spec.homepage    = 'https://github.com/tecracer/ashiba-train'

  spec.files       = Dir.glob('templates/**/**', File::FNM_DOTMATCH)
  spec.files      += ['README.md', 'CHANGELOG.md']

  spec.required_ruby_version = '>= 2.6'

  spec.add_runtime_dependency('ashiba', '>= 0.6')
end

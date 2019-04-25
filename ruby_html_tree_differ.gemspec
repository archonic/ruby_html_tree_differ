Gem::Specification.new do |s|
  s.name          = 'ruby_html_tree_differ'
  s.version       = '0.0.2'
  s.date          = '2018-08-25'
  s.summary       = 'Ruby wrapper for the Python library htmltreediff. Shows a concise diff between two HTML documents. Output in HTML.'
  s.authors       = ['Joshua Flark']
  s.email         = 'joshuajmark@gmail.com'
  s.files         = ['lib/ruby_html_tree_differ.rb']
  s.require_paths = ['lib']
  s.license       = 'MIT'

  s.required_ruby_version = '>= 2.3.0'

  s.add_dependency("pycall", "= 1.0.3")
end

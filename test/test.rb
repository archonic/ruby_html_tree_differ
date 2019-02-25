require 'ruby_html_tree_differ'
require 'benchmark'

# ENV['PYTHON'] = '/usr/local/bin/pypy2/bin/pypy'
# ENV['LIBPYTHON'] = '/usr/local/bin/pypy2/bin/pypy'

print 'PYTHON ENV:'
system('echo $PYTHON')
print 'LIBPYTHON ENV:'
system('echo $LIBPYTHON')
print 'which python3:'
system('which python3')
print 'which python:'
system('which python')

differ = RubyHtmlTreeDiffer.new
old_doc = IO.read File.join(__dir__, 'old.html')
new_doc = IO.read File.join(__dir__, 'new.html')

time = Benchmark.measure do
  p differ.diff! old_doc, new_doc
end
print "Short document time: #{time.real}"

large_old_doc = IO.read File.join(__dir__, 'large_old.html')
large_new_doc = IO.read File.join(__dir__, 'large_new.html')

time = Benchmark.measure do
  p differ.diff! large_old_doc, large_new_doc
end
print "Large document time: #{time.real}"

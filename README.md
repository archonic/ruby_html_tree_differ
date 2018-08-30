# ruby_html_tree_differ

Shows the difference between two HTML documents, rendered to HTML. Relies on the [html-tree-diff](https://github.com/christian-oudard/htmltreediff/) python module and calls it using [pycall.rb](https://github.com/mrkn/pycall.rb).

### Prerequisites

You have to have python installed. You can set the python command (`python` or `python3`) with the ENV variable `PYTHON`. By default pycall checks for python3, then python. If your `RUBY_PLATFORM` is `x86_x64_linux` you should set the ENV variable `LIBPYTHON` to the output of `which python` or `which python3`. For me it was `/usr/bin/python3`. Check pycall's [finder.rb](https://github.com/mrkn/pycall.rb/blob/master/lib/pycall/libpython/finder.rb) if you have trouble.

### Install

Gemfile:
```
gem "ruby_html_tree_differ"
```

Or:
```
gem install ruby_html_tree_differ
```

### Example

```ruby
require 'ruby_html_tree_differ'

differ = RubyHtmlTreeDiffer.new

old_doc = <<EOF
<p>Unchanged paragraph.</p>
<p>Altered paragraph.</p>
<p>Deleted paragraph.</p>
EOF

new_doc = <<EOF
<p>Unchanged paragraph.</p>
<p>Alterated paragraph.</p>
EOF

print differ.diff! old_doc, new_doc
```

```html
<p>Unchanged paragraph.</p>
<p>
  <del>Altered</del>
  <ins>Alterated</ins>
   paragraph.
</p>
<del>
  <p>Deleted paragraph.</p>
</del>
```

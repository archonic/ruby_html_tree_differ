class RubyHtmlTreeDiffer
  require 'pycall/import'
  include PyCall::Import

  def initialize
    PyCall.sys.path.append File.expand_path(File.join(File.dirname(__FILE__), '..'))
    pyimport :htmltreediff
  end

  def diff!(old_document, new_document)
    htmltreediff.diff(old_document, new_document, pretty: true)
  end
end

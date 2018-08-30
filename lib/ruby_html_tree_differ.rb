class RubyHtmlTreeDiffer
  require 'pycall/import'
  include PyCall::Import

  def initialize(cmd = 'python3')
    PyCall.init(cmd)
    pyimport :htmltreediff
  end

  def diff!(old_document, new_document)
    htmltreediff.diff(old_document, new_document, pretty: true)
  end
end

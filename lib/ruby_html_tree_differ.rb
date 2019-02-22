class RubyHtmlTreeDiffer
  require 'pycall/import'
  require 'timeout'
  include PyCall::Import

  def initialize
    pyimport :htmltreediff
  end

  def diff!(old_document, new_document, timeout = 0)
    Timeout.timeout(timeout) do
      htmltreediff.diff(old_document, new_document, pretty: true)
    end
  end
end

# frozen_string_literal: true

class RubyHtmlTreeDiffer
  require 'pycall/import'
  include PyCall::Import

  def initialize
    pyimport :htmltreediff
  end

  def diff!(old_document, new_document)
    difference_document = htmltreediff.diff(old_document, new_document, pretty: true)
    PyCall::PyPtr.decref(difference_document.__pyptr__)
    difference_document
  end
end

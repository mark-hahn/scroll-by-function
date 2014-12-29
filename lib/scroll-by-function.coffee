###
  lib/scroll-by-function.coffee
###

{TextEditor} = require 'atom'

module.exports =
  activate: ->
    atom.workspaceView.command "scroll-by-function:up",   => @scroll -1
    atom.workspaceView.command "scroll-by-function:down", => @scroll +1
    
  scroll: (dir) ->
    editor  = atom.workspace.getActivePaneItem()
    if editor instanceof TextEditor
      buffer  = editor.getBuffer()
      line    = editor.getSelection().getBufferRange().start.line
      
      $editor = $ atom.views.getView editor
      
      $ '.meta.function'
      
      editor.setCursorBufferPosition [line,0], autoscroll: yes


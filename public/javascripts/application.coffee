gui = require 'nw.gui'
Window = gui.Window.get()

$ ->
    $ "#minimize" .on 'click', ->
        Window.minimize()

    $ "#fullscreen" .on 'click', ->
        Window.toggleFullscreen()

    $ "#close" .on 'click', ->
        Window.close()

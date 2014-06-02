#ui-button
The basic button with 
[FontAwesome](http://fortawesome.github.io/Font-Awesome/) based icons
and a text label.

Attach an `onclick` with straight JavaScript or an `on-click` if you 
use this as a component of another Polymer element.


    Polymer 'ui-button',

##Events
###click
Pretty much everything fires click, but just reminding you!

##Attributes and Change Handlers
###enabled
Enable or disable the button.
###icon
This is a `fa-` icon name.
###label
Simple text to display.
###hotkey
Character or character code to enable hotkeys. For example 32 is hotkey space.

##Methods

##Event Handlers

      pointerdown: ->
        if @enabled
          @$.button.classList.add 'pressed'
      pointerup: ->
        @$.button.classList.remove 'pressed'
      pointerenter: ->
      pointerleave: ->

##Polymer Lifecycle

      created: ->
        @enabled = true

      ready: ->

      attached: ->

This element hooks to the document to process hotkeys.

        document.addEventListener 'keydown', (e) =>
          return unless @hotkey
          key = if isNaN(@hotkey) then String.fromCharCode(e.keyCode).toLowerCase() else e.keyCode.toString()
          activeElem = document.activeElement.tagName.toLowerCase()
          if @enabled and key is @hotkey and ( e.altKey or ( activeElem != 'textarea' and activeElem != 'input' ) )
            @fire 'click'
            e.preventDefault?()
            e.stopPropagation?()

      domReady: ->

      detached: ->

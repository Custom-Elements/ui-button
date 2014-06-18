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

##Methods

##Event Handlers

      pointerdown: ->
        if @enabled
          @$.button.classList.add 'pressed'
      pointerup: ->
        @$.button.classList.remove 'pressed'
      click: (evt) ->
        if not @enabled
          evt.preventDefault()
          evt.stopPropagation()
          evt.stopImmediatePropagation()
          return false

      pointerenter: ->
      pointerleave: ->

##Polymer Lifecycle

      created: ->
        @enabled = true

      ready: ->

      attached: ->

      domReady: ->

      detached: ->

#ui-button
The basic button that wraps your content. Fun press effects.

Attach an `onclick` with straight JavaScript or an `on-click` if you
use this as a component of another Polymer element.

    Polymer 'ui-button',

##Events
###click
Pretty much everything fires click, but just reminding you!

##Attributes and Change Handlers
###disabled
Marker turns the button off temporarily. Please hide buttons instead.

##Methods

##Event Handlers

      pointerdown: ->
        if not @hasAttribute 'disabled'
          @$.button.classList.add 'pressed'
      pointerup: ->
        @$.button.classList.remove 'pressed'
      supress: (evt) ->
        evt.preventDefault()
        evt.stopPropagation()
        evt.stopImmediatePropagation()
        return false

      pointerenter: ->
      pointerleave: ->

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->

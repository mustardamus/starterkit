LayoutView = require('../views/layout/layout')

module.exports = Backbone.Router.extend
  routes:
    '': 'onRoot'

  initialize: ->
    _.bindAll @, 'onRoot'

    @layoutView = new LayoutView

  onRoot: ->
    $.getJSON '/hello/dude', (res) ->
      $('h1').text res.str

    $.getJSON '/count', (res) ->
      $('h1').append "<small>Visited #{res.visits} times.</small>"
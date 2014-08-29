window.app =
  events: _.extend {}, Backbone.Events
  routes: require('./routers')

jQuery ->
  for routeName, routeFunc of app.routes
    app.routes[routeName] = new routeFunc

  Backbone.history.start()
  $(document).foundation()
# Starterkit `0.0.3`

## Stack
  - [NPM](https://www.npmjs.org/)
  - [Gulp](http://gulpjs.com/)
  - [Bower](http://bower.io/)
  - [CoffeeScript](http://coffeescript.org/)
  - [Browserify](http://browserify.org/)
  - [Stylus](https://learnboost.github.io/stylus/)
  - [Foundation](http://foundation.zurb.com/)
  - [Underscore](http://underscorejs.org/)
  - [Backbone](http://backbonejs.org/)
  - [Backbone.dualStorage](https://github.com/nilbus/Backbone.dualStorage)
  - [Mustache](https://github.com/janl/mustache.js)
  - [Express](http://expressjs.com/)
  - [Mongoose](http://mongoosejs.com/)

## Setup the development environment

    npm install
    bower install

## Build the production code

    gulp build

Files will be ready in `./public`.

## Development server

    gulp server

Files will be watched for changes, compiled to and served from `./public`.
This will only start the server for the front-end.

[localhost:6699](http://localhost:6699)

## Express server

    npm start

Will start the Express server. Static files will be served from `./public`.

[localhost:7799](http://localhost7799)

    gulp watch

To watch files for changes and compile the production code, served by the
Express server.

To configure the express app just edit the file `./config.coffee`.

## Add JavaScript and CSS libraries

  1. Install with bower: `bower install [libName] --save`
  2. Include path in `./app/scripts/vendor.js` or `./app/styles/vendor.css`
  3. Win - vendor libraries will be merged and minified to
  `./public/scripts/vendor.js` or `./public/styles/vendor.css`

## Add a new resource to the Backbone app

  1. Create a new router: `./routers/[resourcenName].coffee`
  2. Require the new router in `./routers.coffee`
  3. Win - in the router, include your routes logic, collections, views and
  whatnot.

## Add helpers to the Express app

  1. Create a file in `./helpers`. The filename will be the namespace of the
  helper functions inside of it.
  2. Win - when initializing routes the complete helper object, all files
  initialized, will be passed as the second argument.
  3. Double Win - Underscore will be added automatically to the helpers object
  as `helpers._` (`_._`) when passed to the routes.

## Add routes to the Express webserver

  1. Create a file in `./routes`. Filename does not really matter, but it would
  be smart to name it after the resource that it is handling.
  2. The `module.exports` should return a function that accept three arguments.
  `models` are the initialized Mongoose models. `_` is the helpers functions.
  `config` is the  configutation object from the file `./config.coffee`
  Inside the function, `this` is the reference to the Express app.

## Add models to Mongoose

  1. Create a file in `./models`. The filename will be the namespace of the
  model declaration.
  2.  The `module.exports` should return a function that accept one argument,
  which is the `helper` object.
  Inside the function, `this` is the reference to the Mongoose object.

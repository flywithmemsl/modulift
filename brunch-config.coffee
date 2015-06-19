exports.config =
  # See http://brunch.io/#documentation for docs.
  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^(?!app)/
    stylesheets:
      joinTo: 'stylesheets/app.css'
    templates:
      joinTo: 'javascripts/app.js'

  plugins:
    autoReload:
      port: [12355]
    postcss:
      config: (postcss) ->
        postcss().
        use(require('autoprefixer')(['last 8 versions']).postcss)
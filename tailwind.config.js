module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/views/**/*.html.slim',
    './app/components/**/*.html.slim',
    './app/components/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js'
  ],
  plugins: [
    require('@tailwindcss/forms'),
  ]
}

module.exports = {
  theme: {
    extend: {},
  },
  variants: {},
  plugins: [
    require('./assets/css/typography.js'),
  ],
  purge: [
    'layouts/**/*.html',
    'assets/css/typography.js',
    'assets/css/tailwind.css',
  ],
}

const defaultTheme = require('tailwindcss/defaultTheme')

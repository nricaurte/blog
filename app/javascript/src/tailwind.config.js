const defaultTheme = require('tailwindcss/defaultTheme')
const colors = require('tailwindcss/colors')
module.exports = {
  darkMode: 'media',
  theme: {
    extend: {
      colors: {
        rose: colors.rose,
        pink: colors.pink,
        fuchsia: colors.fuchsia,
        purple: colors.purple,
        violet: colors.violet,
        indigo: colors.indigo,
        blue: colors.blue,
        'light-blue': colors.lightBlue,
        cyan: colors.cyan,
        teal: colors.teal,
        emerald: colors.emerald,
        green: colors.green,
        lime: colors.lime,
        yellow: colors.yellow,
        amber: colors.amber,
        orange: colors.orange,
        red: colors.red,
        'warm-gray': colors.warmGray,
        'true-gray': colors.trueGray,
        gray: colors.gray,
        'cool-gray': colors.coolGray,
        'blue-gray': colors.blueGray,
        default: colors.gray // Custom
      },
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@alexcarpenter/tailwindcss-aria'),
    require('@tailwindcss/aspect-ratio'),
  ]
}
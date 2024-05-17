/** @type {import('tailwindcss').Config} */
export default {
  content: [],
  theme: {
    extend: {},
  },
  plugins: [
    require('daisyui'),
  ],
  daisyui: {
    themes: [
    {
      nestGit: {
        "primary": "#ffffff",
        "secondary": "#626262",
        "accent": "#A6A79D",
        "neutral": "#F7F7F6",
        "success": "#faa230",
        "base-100": "#030302",
      },
    },
    ],
  },
}


import { fontFamily } from 'tailwindcss/defaultTheme'

/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      fontFamily: {
        // เพิ่ม font Noto Sans Thai เป็น default font
        sans: ['Noto Sans Thai', ...fontFamily.sans],
      },
    },
  },
  plugins: [],
} 
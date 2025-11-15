/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Kaisei Opti', 'serif'],
      },
      colors: {
        'detective': {
          50: '#F7D4B5',  // やや薄め R:247 G:212 B:181
          100: '#F5CEAB', // ベースカラー R:245 G:206 B:171（指定色）
          200: '#F5CEAB', // メインカラー R:245 G:206 B:171（指定色）
          300: '#F0B98C', // 少し濃め
          400: '#EBA46D', // 濃め
          500: '#E68F4E', // さらに濃め
        },
      },
    },
  },
  plugins: [],
}


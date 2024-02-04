import type { Config } from 'tailwindcss';
import colors from 'tailwindcss/colors';

export default {
  content: ['./theme/**/*.ftl'],
  experimental: {
    optimizeUniversalDefaults: true,
  },
  plugins: [require('@tailwindcss/forms')],
  theme: {
    extend: {
      colors: {
        neutral: {
          50: '#FBFBFC',
          100: '#F3F3F4',
          200: '#E8E7EA',
          300: '#ffffff',
          400: '#D0D0D5',
          500: '#BIB0B9',
          600: '#82808F',
          700: '#565560',
          800: '#2B2A30',
          900: '#161518',
        },
        primary: { 100: '#121212' },
        secondary: { 100: '#181818',200: '#181818'  },
        tetiary: { 100: '#282828' },
        main: { 100: '#53ADA2' },
        provider: {
          apple: '#000000',
          bitbucket: '#0052CC',
          discord: '#5865F2',
          facebook: '#1877F2',
          github: '#181717',
          gitlab: '#FC6D26',
          google: '#4285F4',
          instagram: '#E4405F',
          linkedin: '#0A66C2',
          microsoft: '#5E5E5E',
          oidc: '#F78C40',
          openshift: '#EE0000',
          paypal: '#00457C',
          slack: '#4A154B',
          stackoverflow: '#F58025',
          twitter: '#1DA1F2',
        },
      },
    },
  },
} satisfies Config;

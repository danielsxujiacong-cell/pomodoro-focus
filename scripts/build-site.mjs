import { mkdir, writeFile } from 'node:fs/promises';

const url = process.env.SUPABASE_URL;
const anonKey = process.env.SUPABASE_PUBLISHABLE_KEY;

if (!url || !anonKey) {
  console.log('Supabase environment variables not set; keeping local config.js workflow.');
  process.exit(0);
}

if (!/^https:\/\/[^\s/]+\.supabase\.co$/.test(url)) {
  throw new Error('SUPABASE_URL must be a Supabase project URL.');
}

await mkdir('dist', { recursive: true });
await writeFile(
  'dist/config.js',
  `window.SUPABASE_CONFIG = ${JSON.stringify({ url, anonKey })};\n`,
  'utf8',
);
console.log('Generated dist/config.js from Sites environment variables.');

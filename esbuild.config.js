// esbuild.config.js
const path = require('path');
const esbuild = require('esbuild');

esbuild.build({
  entryPoints: ['app/javascript/application.js'],
  bundle: true,
  minify: true,
  sourcemap: true,
  outdir: path.join(process.cwd(), 'app/assets/builds'),
  loader: { '.js': 'jsx', '.scss': 'scss' },
  plugins: [
    {
      name: 'scss',
      setup(build) {
        build.onLoad({ filter: /\.scss$/ }, async (args) => {
          const sass = require('sass');
          const result = sass.renderSync({ file: args.path });
          return { contents: result.css.toString('utf8') };
        });
      },
    },
  ],
}).catch(() => process.exit(1));

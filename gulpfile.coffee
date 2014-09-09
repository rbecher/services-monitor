gulp = require 'gulp'
shell = require 'gulp-shell'

gulp.task 'zip', shell.task [
  'zip -r app.nw .'
]

# Run project
gulp.task 'run', shell.task [
  'node_modules/node-webkit-builder/bin/nwbuild --run ./'
]

# Compile
gulp.task 'osx', shell.task [
  'node_modules/node-webkit-builder/bin/nwbuild -p osx ./'
]

# Compile
gulp.task 'win', shell.task [
  'node_modules/node-webkit-builder/bin/nwbuild -p win ./'
]

# Compile
gulp.task 'linux', shell.task [
  'node_modules/node-webkit-builder/bin/nwbuild -p linux32,linux64 ./'
]


var baseDir = '/c/dev/node_modules/';

var sys = require('sys')
var exec = require('child_process').exec;
var child;

const fs = require('fs');
fs.readdir(baseDir, function (err, files) {
  files.forEach(function (file) {
    if (file.indexOf('cartoes') !== -1) {
      process.chdir(baseDir + file);
      console.log(file);

      
      child = exec('npm run test-cover', function (error, stdout, stderr) {
        console.log(file);
        //sys.print('stdout: ' + stdout);
        if (stderr) {
          console.log('exec stderr: ' + stderr);
        }
        sys.print('stderr: ' + stderr);
        if (error) {
          console.log('exec error: ' + error);
        }
      });
      
      
    }

  });
})


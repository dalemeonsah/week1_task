var exportM = require('./export.js');
var dir = process.argv[2];
var ext = process.argv[3];

exportM(dir, ext, function(err, list){
  if(err) return console.error('There was an error:', err);

  list.forEach(function (file){
    console.log(file);
  })
})

// Official answer
// var filterFn = require('./solution_filter.js')
//     var dir = process.argv[2]
//     var filterStr = process.argv[3]
    
//     filterFn(dir, filterStr, function (err, list) {
//       if (err)
//         return console.error('There was an error:', err)
    
//       list.forEach(function (file) {
//         console.log(file)
//       })
//     })
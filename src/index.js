var uniqueRandomArray = require('unique-random-array');
var starWarNames = require('./starwars-names.json');


module.exports={

  all: starWarNames,
  random: uniqueRandomArray(starWarNames)

};

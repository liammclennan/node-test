
var haml = require('../packages/haml-js/lib/haml');
var fs = require('fs');

//console.log('hello');

fs.readFile('views/view.haml', 'utf8', function(err, data) {
	console.log(data);
	console.log(haml.render(data, {locals: {title:'Cats Cradle'}}));
});

haml = require '../packages/haml-js/lib/haml'
fs = require 'fs'

fs.readFile 'views/view.haml', 'utf8', (err, data) -> 
	console.log data
	console.log haml.render(data, locals: 
		title: 'Cats Cradle' )
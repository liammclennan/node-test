

Person = (() ->
	[name, age] = [{},{}]
		
	constructor = (n, a) ->
		[name, age] = [n, a]
		
	constructor.prototype = 
		toString: () ->
			"name is #{name} age is #{age} yearls old"
	
	constructor
)()

john = new Person "John Galt", 50
console.log john.toString()

###


haml = require '../packages/haml-js/lib/haml'
fs = require 'fs'

fs.readFile 'views/view.haml', 'utf8', (err, data) -> 
	console.log data
	console.log haml.render(data, locals: 
		title: 'Cats Cradle' )

		
		
var Person = (function() {
  // private variables go here
  var name,age;
  
  function constructor(n, a) {
    name = n;
    age = a;
  }

  constructor.prototype = {
    toString: function() {
      return name + " is " + age + " years old.";
    }
  };
  
  return constructor;  
})();

var john = new Person("John Galt", 50);
console.log(john.toString());

###
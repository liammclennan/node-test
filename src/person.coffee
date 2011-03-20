
# JavaScript style class using closure to provide private methods
Person = (() ->
	[name,age] = [{},{}]
		
	constructor = (n, a) ->
		[name,age] = [n,a]
		null
		
	constructor.prototype = 
		toString: () ->
			"name is #{name} age is #{age} years old"
	
	constructor
)()

john = new Person "John Galt", 50
console.log john.toString()


# CoffeeScript style class using the class keyword
class CoffeePerson
	constructor: (@name, @age) ->
	
	toString: () ->
		"name is #{@name} age is #{@age} years old"
		
felix = new CoffeePerson "Felix Hoenikker", 63
console.log felix.toString()

# added another comment

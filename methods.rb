def myFunction( arg1, otherArgs = {})
	otherArgs.each { |thing| puts thing }
end

myFunction( "yowzwer", prop1:"Hello", prop2:"I am a property")

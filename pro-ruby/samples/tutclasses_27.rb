# In ruby, a variable isn't an object. It is simply a reference to an object. 
# Objects float around in a big pool somewhere(the heap, most of time) and are 
# pointed to by variables.
# Variable holds references to objects, not the objects themselves.

#person1 = "Tim"
#person2 = person1
#person1[0] = 'J'
#puts "person1 is #{person1}"
#puts "person2 is #{person2}"

#person1 = "Tim"
#person2 = person1.dup # use the dup method of String, which creates a new String object with identical contents.
#person1[0] = 'J'
#puts "person1 is #{person1}"
#puts "person2 is #{person2}"


person1 = "Tim"
person2 = person1
person1.freeze # prevent modifications to the object
person1[0] = 'J'
puts "person1 is #{person1}"
puts "person2 is #{person2}"
#####################################
# outputs:
# tutclasses_27.rb:22:in `[]=': can't modify frozen String (RuntimeError)
# from tutclasses_27.rb:22:in `<main>'
#########################################################################


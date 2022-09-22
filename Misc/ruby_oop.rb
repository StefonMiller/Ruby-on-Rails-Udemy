require_relative "crud"

# Class delcaration
class Student
  # Include statements allow for external module methods to be called
  # directly on that object. Need to get rid of 'self' in external module for
  # mixins like this to work
  include Crud

  # Allows for traditional read/updates of instance variables (object.attr)
  attr_accessor :first_name, :last_name, :email, :username
  
  # Allows for retrieval of variable only
  attr_reader :password
  
   # Class instance variable are prefaced with '@'
   @first_name
   @last_name
   @email
   @username
   @password
  
  # Object constructor
  def initialize(fn, ln, un, em)
    @first_name = fn
    @last_name = ln
    @username = un
    @email = em
  end
  
  # Need predefined setter for variables with only attr_reader
  def set_password(pw)
    @password = pw
  end

  # Need to_s method to not print address, like Java
  def to_s
    "Student: #{@last_name}, #{@first_name} \nemail: #{@email} \nusername: #{@username}"
  end
# Need to declare end of classes
end

# Create object of class
stefon = Student.new("Stefon", "Miller", "StefonMiller", "stefon@test.com")

stefon.set_password("Test")

# Printing object without defined print method outputs the address
puts stefon
puts stefon.password

stefon.set_password(Crud.create_hash(stefon.password))
puts stefon.password

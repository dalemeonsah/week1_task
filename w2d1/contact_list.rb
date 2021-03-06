require_relative 'contact'
require 'pry'

# Interfaces between a user and their contact list. Reads from and writes to standard I/O.
#binding.pry
class ContactList

  # TODO: Implement user interaction. This should be the only file where you use `puts` and `gets`.
  command = ARGV[0]
  param = ARGV[1] 
  
  case command
  when "list"
    puts Contact.all
  when "show"
    unless param.nil? || param.empty?
      puts Contact.find(param)
    else
      puts "Please input a param"
    end
  when "new"
    puts "Please enter your full name"
    full_name = STDIN.gets.chomp
    
    puts "Please enter your email"
    email = STDIN.gets.chomp

    Contact.create(full_name, email)
    puts "#{full_name} is created"
  when "search"
    unless param.nil? || param.empty?
      puts Contact.search(param)
    else
      puts "Please input a param"
    end
  else
    puts "Here is a list of available commands:"
    puts "  new    - Create a new contact"
    puts "  list   - List all contacts"
    puts "  show   - Show a contact"
    puts "  search - Search contacts"
  end

end

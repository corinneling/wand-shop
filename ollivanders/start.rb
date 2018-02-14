require 'json'
require_relative 'interface'

# reads the JSON file and stores that in a var
stored_elements = File.read('./ollivanders/elements.json')

# parses the read JSON file, turns keys into symbols, and stores that in a var
elements = JSON.parse(stored_elements, {:symbolize_names => true})

# creates a new isntance of the Interface class and gives it the parsed JSON files as a parameter
interface = Interface.new elements

# gets the interface running
interface.get_customer_info

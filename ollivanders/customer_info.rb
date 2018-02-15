class CustomerInfo

  # i want to intialize the key values so I can print out the order
  def initialize values
    @core = values[:core]
    @material = values[:material]
    @length = values[:length]
    @flexibility = values[:flexibility]
    @spells = values[:spells]
  end

  # will print what the user chose
  def print_info
    puts "Let's make sure we got your info correct. You have a #{@core} core, #{material}, #{length}, #{flexibility} wand, and used #{spells}."
  end

end

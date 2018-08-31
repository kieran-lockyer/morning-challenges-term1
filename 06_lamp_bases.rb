# The Company is currently wanting to produce another 500 units of product sku 276834, which is a lamp with 
# a circular base. Unfortunately, a staff member forgot to order the plywood to make the base and didn’t account 
# for the cost of this wood.

# Plywood can be purchased in 1200 X 2400 mm sheets at a cost of $28.47 per sheet.
# Each lamp base is a circle with a diameter of 320mm. 
# What is the total cost of ordering the plywood for the bases, and how much plywood is wasted?

plywood_len = 2400
plywood_wid = 1200
lamp_base_diam = 320
lamp_base_area = Math::PI * ((lamp_base_diam/2) ** 2)
lamp_offset = Math.sqrt((lamp_base_diam ** 2) - ((lamp_base_diam / 2) ** 2))

no_of_offset = 0
plywood_wid -= lamp_base_diam
while plywood_wid >= 0
    plywood_wid -= lamp_offset
    no_of_offset += 1
end
no_of_offset -= 1
plywood_wid = 1200

fits_in_height = 1 + no_of_offset
plywood_area = plywood_len * plywood_wid
lamps = (plywood_len / lamp_base_diam) * fits_in_height


plywood_boards_needed = (500.0 / lamps).ceil
cost = plywood_boards_needed * 28.47
waste = (plywood_boards_needed * plywood_area) - (500 * lamp_base_area)

puts "plywood boards needed: #{plywood_boards_needed}"
puts "waste: #{"%.2f" % Math.sqrt(waste)}mm squared"
puts "total cost: $#{cost}"
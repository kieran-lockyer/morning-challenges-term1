# The Company originally started in Melbourne with a product list that consisted 
# of the following sku numbers: 

# "112334", "276834", "098464", "356498", "065134", "124589", "132548", "102334", 
# "278834", "078464",  "356298", "085134", "134589", "132598", "152334", "876834", 
# "088464", "336498", "005134", "124580",  "132588", "102333", "268834", "098464", 
# "956298", "081134", "134889", "132698"

# They then expanded to Brisbane, and while Brisbane began with mostly the same 
# product sku list (some items they stopped stocking because they didn’t sell so 
# well), they also had some extras and ended up with the following list:
# "132588", "102333", "268834", "098464", "956698", "081134", "134889", "132698", 
# "112334", "276834", "098464", "356498", "065134", "132548", "102334", "278834", 
# "078464", "356298", "005134", "134589", "132598",  "876834", "088464", "336498", 
# "005134", "124588"

# Head office want a complete sku list with no duplicates. 

# Easy to do right? Now try working it out with three lines of code, you should be 
# able to do it with 6 words and some operators and syntax.

# Single line solution wiith method
# unique_sku_list = (["112334", "276834", "098464", "356498", "065134", "124589", "132548", "102334", "278834", "078464",  "356298", "085134", "134589", "132598", "152334", "876834", "088464", "336498", "005134", "124580",  "132588", "102333", "268834", "098464", "956298", "081134", "134889", "132698"] + ["132588", "102333", "268834", "098464", "956698", "081134", "134889", "132698", "112334", "276834", "098464", "356498", "065134", "132548", "102334", "278834", "078464", "356298", "005134", "134589", "132598",  "876834", "088464", "336498", "005134", "124588"]).uniq

# print unique_sku_list
# puts

melb_sku_list = ["112334", "276834", "098464", "356498", "065134", "124589", "132548", "102334", "278834", "078464",  "356298", "085134", "134589", "132598", "152334", "876834", "088464", "336498", "005134", "124580",  "132588", "102333", "268834", "098464", "956298", "081134", "134889", "132698"]
bris_sku_list = ["132588", "102333", "268834", "098464", "956698", "081134", "134889", "132698", "112334", "276834", "098464", "356498", "065134", "132548", "102334", "278834", "078464", "356298", "005134", "134589", "132598",  "876834", "088464", "336498", "005134", "124588"]
total_sku_list = []

# Single line solution with loop
(melb_sku_list + bris_sku_list).each {|sku| total_sku_list.push(sku) if !total_sku_list.include?(sku)}

print total_sku_list
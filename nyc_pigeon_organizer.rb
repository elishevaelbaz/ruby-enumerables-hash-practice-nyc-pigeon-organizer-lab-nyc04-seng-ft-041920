require 'pry' 

def nyc_pigeon_organizer(data)
  # create the new hash
  pigeon_list = {}
  
  # iterate through the first level (each Pigeon)
  data.each do |key, value| 
    # iterate through each attribute
    value.each do |nested_key, nested_value|
      # iterate through the array of info
      nested_value.each do |element|
        
        ### if pigeon_list[element] (pigeon_list[Theo] ) exists add to what is there
        if pigeon_list[element]
          # if pigeon_list[Theo][current_attribute]
          if pigeon_list[element][key]
          pigeon_list[element][key].push nested_key.to_s
          else
            # pigeon_list[Theo][current_attribute] does not exist but another attr does
            pigeon_list[element][key] = [nested_key.to_s]
          end
        ### otherwise create it
        else
          pigeon_list[element]= {key =>[nested_key.to_s]}
        end
        
      end
    end
  
  end
# pigeon_list
# =======
#   pigeon_list = {}
#   data.each do |key, value| 
#     value.each do |nested_key, nested_value|
      
#       name_array = nested_value
      
#       nested_value.each do |element|
        
#         # pigeon_list[element] = {}
#         ### if pigeon_list[element] exists add to exists
#         if pigeon_list[element]
#           pigeon_list[element][key].push nested_key.to_s
# # binding.pry
#         ### otherwise create it
#         else
#           pigeon_list[element] = {key =>[nested_key.to_s]}
#         end
        
        
#         # pigeon_list[element] = {key =>[]}
        
        
#         # pigeon_list[element][key] = [nested_key]
#         # {element => {key => nested_key}}
        
#         # puts pigeon_list[element][key][nested_key]
#         # if pigeon_list[element][key][nested_key] pigeon_list[element][key] << nested_key
#         # else
#         # pigeon_list[element] = {key => [nested_key]}
#         # end
        
        
#         # pigeon_list[element] = {key => [nested_key]}
        
        
#     #     # pigeon_list[element][key] = nested_key
#     # # puts pigeon_list
#       end
#     # puts "key #{nested_key}"
#     # puts "value: #{nested_value}"
#   end
#   # binding.pry
#   puts pigeon_list
#   # puts pigeon_list[:Theo]
#   end
  
  
# #   sorted_member_list =  data.reduce({}) do |memo, (key, value)|
# #   memo[key] = value.sort
# #   memo
# # end
# # puts sorted_member_list
# puts pigeon_list
# # binding.pry
# >>>>>>> 724c6b3d71ba027807ab66b5b99298e3e0a4a060
# end


# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

# nyc_pigeon_organizer(pigeon_data)

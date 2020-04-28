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
end
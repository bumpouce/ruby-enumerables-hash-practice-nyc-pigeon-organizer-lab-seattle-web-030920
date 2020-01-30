def nyc_pigeon_organizer(data)
  reorganized_pigeon_data = {}

  data.collect do |category|
    key = category.shift
    category.collect do |type|
      type.collect do |names|
        descriptor = names.shift.to_s
        list_of_names = names.shift
        list_of_names.collect do |pigeon|

          if reorganized_pigeon_data.has_key?(pigeon)
            if reorganized_pigeon_data[pigeon].has_key?(key)
              reorganized_pigeon_data[pigeon][key] << descriptor
            else
            reorganized_pigeon_data[pigeon][key] = [descriptor]
            end
         else
            reorganized_pigeon_data[pigeon] = {}
            reorganized_pigeon_data[pigeon][key] = [descriptor]
          end
          
        end
      end
    end
  end
  reorganized_pigeon_data
end

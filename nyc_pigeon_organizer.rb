require "pry"

def nyc_pigeon_organizer(data)
  organized_list={}

  data.each do |outer_key,values| #Access lvl1
    binding.pry
    values.each do |inner_key,p_names| #Access lvl2
      binding.pry
      p_names.each do |name| #Access lvl3
        if organized_list[name] ||={} #using||= to check for nil assign empty hash
          if organized_list[name][outer_key] ||= [] #using||= to check for nil assign empty array
            organized_list[name][outer_key]<< (inner_key.to_s) #Convert symbol to strings
            binding.pry
      end
     end
    end
   end
 end
 organized_list
end

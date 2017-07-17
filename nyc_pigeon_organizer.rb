def nyc_pigeon_organizer(data)
  # write your code here!
  names = []
  pigeon_list = {}

  data.each do |key, value|
    value.each do |color, value|
      names << value
      end
    end
    
  names.flatten!.uniq!.each do |name|
    pigeon_list[name] = {}
  end

  data.each do |key, value|
    value.each do |key2, name|
      name.each do |pigeon|
        if pigeon_list[pigeon][key]
          pigeon_list[pigeon][key] << key2.to_s
        else
          pigeon_list[pigeon][key] = [key2.to_s]
        end
      end
    end
  end
  pigeon_list
end

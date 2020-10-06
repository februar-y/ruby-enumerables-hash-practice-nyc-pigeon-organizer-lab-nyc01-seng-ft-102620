

def nyc_pigeon_organizer(data)
	new_hash = {}
	name_array = data[:gender][:male] + data[:gender][:female]
	name_array.each do |name|
		new_hash[name] = {
			:color => [], 
			:gender => [], 
			:lives => []
		}
	end
  data[:color].each do |item|
    name_array.each do |name|
      if item[1].include? name
        new_hash[name][:color] << item[0].to_s
      end
    end
  end
  data[:gender].each do |item|
    name_array.each do |name|
      if item[1].include? name
        new_hash[name][:gender] << item[0].to_s
      end
    end
  end

  data[:lives].each do |item|
    name_array.each do |name|
      if item[1].include? name
        new_hash[name][:lives] << item[0].to_s
      end
    end
  end
end
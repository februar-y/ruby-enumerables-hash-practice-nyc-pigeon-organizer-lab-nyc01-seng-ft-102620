pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}



def nyc_pigeon_organizer(data)
	new_hash = {}
	name_array = data[:gender][:male] + data[:gender][:female]
	name_array = name_array.map{|name| name.to_sym}
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

nyc_pigeon_organizer(pigeon_data)
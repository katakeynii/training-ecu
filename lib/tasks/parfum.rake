namespace :parfum do
  desc "TODO"
  task generate: :environment do

  	puts "Walabok on va crééer des parfums"
  	parfums = [
  		"Vanille",
  		"Choco",
  		"Choco Noir",
  		"Choco Blanc",
  		"Fraise",
  		"Pistache",
  		"Karamel",
  		"Tamarin",
  		"Kinder Bueno",
  		"Gingembre",
  		"Madd",
  		"Fôret Noir",
  		"Mojito"
  	]
  	parfums.each do |name|
  		Parfum.create! name: name
  	end 
  end

end

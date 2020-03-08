namespace :glace do
  desc "TODO"
  task load: :environment do
  	Glace.delete_all
  	glaces = [
  		{
  			nom: "1 Cornet",
  			price: 1000,
  			nb: 1
  		},
  		{
  			nom: "2 Cornet",
  			price: 1500,
  			nb: 2
  		},
  		{
  			nom: "3 Cornet",
  			price: 2000,
  			nb: 3
  		},
  		{
  			nom: "Tyson",
  			price: 3000,
  			nb: 4
  		}
  	]
  	glaces.each do |item|
  		Glace.create! name: item[:nom], prix: item[:price], nb_boule: item[:nb]
  	end
  end

end

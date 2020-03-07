class AccueilController < ApplicationController
  def choix
  	@message     = "Bienvenue chez Mamamia"
  	@liste_choix = ["Pistache", "Vanille", "Choco", "Fraise", "Yaourt", "Forêt Noire", "Mamamia", "Kinder Bueno"]
  	render 'meschoix'
  end

  def commander
  	# redirect_to
  end

  def palayaa 
  end

  def payer

  end

  # def livrer_moi_way
  # 	@montant_total = 14000
  # end
end

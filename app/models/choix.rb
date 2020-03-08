class Choix < ApplicationRecord
  belongs_to :glace
  belongs_to :commande
  has_and_belongs_to_many :parfums

  validates_presence_of :quantite
end

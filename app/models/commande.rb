class Commande < ApplicationRecord
  belongs_to :client
  has_many :choixes
end

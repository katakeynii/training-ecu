class Client < ApplicationRecord
	# self.table_name = "customers" 

	has_many :commandes
end
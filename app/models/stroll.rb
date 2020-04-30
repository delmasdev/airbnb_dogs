class Stroll < ApplicationRecord
  belongs_to :city
  belongs_to :dogsitter
  has_many :join_table_dog_strolls
  has_many :dogs, through: :join_table_dog_strolls
end

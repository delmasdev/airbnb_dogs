class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :dog_name
      t.string :dog_pedigree
      t.belongs_to :city, index: true
      t.timestamps
    end
  end
end

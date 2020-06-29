class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :kind
      t.integer :age
      t.string :breed
      t.integer :owner_id

      t.timestamps
    end
  end
end

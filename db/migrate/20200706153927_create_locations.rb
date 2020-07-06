class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :state
      t.integer :tests #write function for total number of tests
      t.integer :postive
      t.integer :negative
      t.integer :hospitalized_currently
      t.integer :in_icu_currently
      t.integer :on_ventilator_currently 
      t.integer :recovered 
      t.integer :death
      # t.datetime :last_update_et 

      t.timestamps
    end
  end
end

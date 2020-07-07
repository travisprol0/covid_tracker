class ChangeLocationSchema < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :tests
    remove_column :locations, :postive
    remove_column :locations, :negative
    remove_column :locations, :hospitalized_currently
    remove_column :locations, :in_icu_currently
    remove_column :locations, :on_ventilator_currently
    remove_column :locations, :recovered 
    remove_column :locations, :death
  end
end

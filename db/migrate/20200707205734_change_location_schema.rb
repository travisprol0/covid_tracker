class ChangeLocationSchema < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :tests, :integer
    remove_column :locations, :postive, :integer
    remove_column :locations, :negative, :integer
    remove_column :locations, :hospitalized_currently, :integer
    remove_column :locations, :in_icu_currently, :integer
    remove_column :locations, :on_ventilator_currently, :integer
    remove_column :locations, :recovered, :integer
    remove_column :locations, :death, :integer
  end
end

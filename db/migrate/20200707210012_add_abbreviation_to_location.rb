class AddAbbreviationToLocation < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :abbreviation, :string
  end
end

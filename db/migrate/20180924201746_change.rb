class Change < ActiveRecord::Migration
  def change
    rename_table :gernes, :genres
  end
end

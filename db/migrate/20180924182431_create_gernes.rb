class CreateGernes < ActiveRecord::Migration
  def change
    create_table :gernes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

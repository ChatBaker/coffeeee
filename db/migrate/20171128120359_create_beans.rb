class CreateBeans < ActiveRecord::Migration[5.1]
  def change
    create_table :beans do |t|
      t.string :name
      t.string :taste
      t.integer :acidity
      t.integer :sweetness
      t.integer :bitter
      t.integer :richness
      t.integer :aroma
      t.string :place
      t.text :feature
      t.text :geography_history

      t.timestamps
    end
  end
end

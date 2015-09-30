class CreateUnitPrices < ActiveRecord::Migration
  def change
    create_table :unit_prices do |t|
      t.decimal :abv
      t.decimal :volume
      t.decimal :units
      t.decimal :price
      t.decimal :unitprice

      t.timestamps
    end
  end
end

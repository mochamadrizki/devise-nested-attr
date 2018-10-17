class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
    	t.string :address1
    	t.string :address2
    	t.references :user

      t.timestamps
    end
  end
end

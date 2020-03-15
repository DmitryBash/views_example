class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :numbers
      t.integer :other_numbers
      t.timestamps
    end
  end
end

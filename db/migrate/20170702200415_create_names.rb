class CreateNames < ActiveRecord::Migration[5.1]
  def change
    create_table :names do |t|
      t.text :addres
      t.integer :pay_tipe

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :produto
      t.float :valor

      t.timestamps
    end
  end
end

class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :about
      t.timestamps
    end
  end
end

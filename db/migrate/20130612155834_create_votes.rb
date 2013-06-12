class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :direction
      t.references :voteable, polymorphic: true
    end
  end
end

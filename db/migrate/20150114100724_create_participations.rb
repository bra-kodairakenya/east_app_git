class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.string :name
      t.integer :telphone
      t.string :mail
      t.string :publish
      t.integer :price
      t.string :content

      t.timestamps
    end
  end
end

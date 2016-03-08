class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :orig
      t.string :short

      t.timestamps null: false
    end
  end
end

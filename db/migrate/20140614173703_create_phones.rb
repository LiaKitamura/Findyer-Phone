class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|

      t.timestamps
      t.string :name
      t.string :os
      t.string :screen_size
      t.string :camera
    end
  end
end

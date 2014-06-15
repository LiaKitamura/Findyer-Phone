class CreatePhoneInfos < ActiveRecord::Migration
  def change
    create_table :phone_infos do |t|
      t.string :name
      t.string :os
      t.string :screen_size
      t.string :camera

      t.timestamps
    end
  end
end

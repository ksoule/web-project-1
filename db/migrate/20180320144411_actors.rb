class Actors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.string :dob
      t.string :height
    end
  end
end

class Actors < ActiveRecord::Migration[5.1]
  def change
    t.string :first_name
    t.string :last_name
    t.string :dob
    t.string :height


    end
  end
end

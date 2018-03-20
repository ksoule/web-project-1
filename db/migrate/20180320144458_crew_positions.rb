class CrewPositions < ActiveRecord::Migration[5.1]
  def change
    t.string :position_title
  end
end

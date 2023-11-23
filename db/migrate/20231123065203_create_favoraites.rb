class CreateFavoraites < ActiveRecord::Migration[6.1]
  def change
    create_table :favoraites do |t|

      t.timestamps
    end
  end
end

class CreateContentPlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :content_places do |t|
      t.string :position
      t.timestamps
    end
  end
end

class CreateHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :histories do |t|
      t.jsonb 'history'
      t.timestamps
    end
  end
end

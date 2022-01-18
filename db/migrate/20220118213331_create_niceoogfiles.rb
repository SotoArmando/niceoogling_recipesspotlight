class CreateNiceoogfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :niceoogfiles do |t|

      t.timestamps
    end
  end
end

class CreateLibretes < ActiveRecord::Migration[7.0]
  def change
    create_table :libretes do |t|
      t.jsonb 'librete'
      t.timestamps
    end
  end
end

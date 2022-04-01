class CreateProgramas < ActiveRecord::Migration[6.1]
  def change
    create_table :programas do |t|
      t.references :area, null: false, foreign_key: true
      t.string :nombre

      t.timestamps
    end
  end
end

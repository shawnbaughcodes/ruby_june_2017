class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :dojo_location
      t.string :favorite_language
      t.string :comment

      t.timestamps null: false
    end
  end
end

class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :comment
      t.references :app, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end

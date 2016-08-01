class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.decimal :price, precision: 8, scale: 2
      t.string :description
      t.string :author_name
      t.string :author_email
      t.references :category, foreign_key: true, index: true

      t.timestamps
    end
  end
end

class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.integer :page_count
      t.date :published_at
      t.string :author

      t.timestamps
    end
  end
end

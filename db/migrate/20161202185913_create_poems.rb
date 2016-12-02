class CreatePoems < ActiveRecord::Migration[5.0]
  def change
    create_table :poems do |t|
      t.string :title
      t.text :poem
      t.boolean :public
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end

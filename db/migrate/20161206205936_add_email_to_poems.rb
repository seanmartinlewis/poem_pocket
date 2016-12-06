class AddEmailToPoems < ActiveRecord::Migration[5.0]
  def change
    add_column :poems, :email, :string
  end
end

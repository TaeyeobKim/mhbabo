class CreateIndentities < ActiveRecord::Migration[5.1]
  def change
    create_table :indentities do |t|
      t.references :user, foreign_key: true
      t.string :provider
      t.string :uid

      t.timestamps
    end
  end
end

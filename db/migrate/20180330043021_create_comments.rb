class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :post
      t.references :user

      t.string :note

      t.timestamps
    end
  end
end

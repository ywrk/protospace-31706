class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.timestamps

      t.references :user, foreign_key: true
      t.references :prototype, foreign_key: true
    end
  end
end

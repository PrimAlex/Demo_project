class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end

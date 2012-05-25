class CreateUserBookmarks < ActiveRecord::Migration
  def change
    create_table :user_bookmarks do |t|
      t.string :title
      t.string :link
      t.integer :user_id

      t.timestamps
    end
  end
end

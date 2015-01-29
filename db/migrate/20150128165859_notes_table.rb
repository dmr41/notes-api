class NotesTable < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :body
      t.string :title
    end
  end
end

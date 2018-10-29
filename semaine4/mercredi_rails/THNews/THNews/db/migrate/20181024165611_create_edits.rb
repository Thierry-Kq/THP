class CreateEdits < ActiveRecord::Migration[5.2]
  def change
    create_table :edits do |t|
      t.belongs_to :user, index: true
      t.belongs_to :comment, index: true
      t.text :content
      t.timestamps
    end
  end
end

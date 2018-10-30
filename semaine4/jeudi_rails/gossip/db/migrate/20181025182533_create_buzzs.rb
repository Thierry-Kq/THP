class CreateBuzzs < ActiveRecord::Migration[5.2]
  def change
    create_table :buzzs do |t|

      t.belongs_to :user, index: true
      t.string :title
      t.text :content
      t.datetime :date
      t.timestamps
    end
  end
end

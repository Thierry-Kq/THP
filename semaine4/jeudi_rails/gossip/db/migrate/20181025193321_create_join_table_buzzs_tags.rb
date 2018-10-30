class CreateJoinTableBuzzsTags < ActiveRecord::Migration[5.2]
  def change
    create_join_table :buzzs, :tags do |t|
      # t.index [:buzz_id, :tag_id]
      # t.index [:tag_id, :buzz_id]
    end
  end
end

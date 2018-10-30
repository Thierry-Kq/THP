class CreateJoinTableAssembliesParts < ActiveRecord::Migration[5.2]
  def change
    create_join_table :assemblies, :parts do |t|
    end
  end
end

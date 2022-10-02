class CreateAssembliesParts < ActiveRecord::Migration[7.0]
  def change
    create_table :assemblies_parts, id: false do |t|
      t.bigint :assembly_id
      t.bigint :part_id

      t.timestamps
    end
    add_index :assemblies_parts, :assembly_id
    add_index :assemblies_parts, :part_id
  end
end

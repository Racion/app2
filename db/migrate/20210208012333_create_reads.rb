class CreateReads < ActiveRecord::Migration[6.1]
  def change
    create_table :reads do |t|
      t.references :announcement, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :read

      t.timestamps
    end
  end
end

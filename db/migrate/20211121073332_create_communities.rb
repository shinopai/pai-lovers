class CreateCommunities < ActiveRecord::Migration[6.1]
  def change
    create_table :communities do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name, null: false
      t.string :community_image

      t.timestamps
    end
  end
end

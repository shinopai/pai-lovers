class CreateProfileImages < ActiveRecord::Migration[6.1]
  def change
    create_table :profile_images do |t|
      t.references :user, foreign_key: true
      t.string :profile_image

      t.timestamps
    end
  end
end

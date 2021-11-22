class RenameImageColumnToCategories < ActiveRecord::Migration[6.1]
  def change
    rename_column :categories, :image, :category_image
  end
end

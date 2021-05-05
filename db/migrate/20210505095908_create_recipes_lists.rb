class CreateRecipesLists < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes_lists do |t|
      t.string :title

      t.timestamps
    end
  end
end

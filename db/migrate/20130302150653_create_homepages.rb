class CreateHomepages < ActiveRecord::Migration
  def change
    create_table :homepages do |t|
      t.string :site_title
      t.string :logo_url
      t.string :contact_info
      t.string :choseus_title
      t.string :choseus_image_one
      t.text :choseus_one
      t.string :choseus_image_two
      t.text :choseus_two
      t.string :choseus_image_three
      t.text :choseus_three
      t.string :portfolio_title
      t.text :portfolio_description

      t.timestamps
    end
  end
end

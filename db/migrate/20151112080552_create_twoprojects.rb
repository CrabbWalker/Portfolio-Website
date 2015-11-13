class CreateTwoprojects < ActiveRecord::Migration
  def change
    create_table :twoprojects do |t|
      t.string :title
      t.string :Sdescription
      t.string :Ldescription
      t.string :btnName
      t.string :btnUrl

      t.timestamps null: false
    end
  end
end

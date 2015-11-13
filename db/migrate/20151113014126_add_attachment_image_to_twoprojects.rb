class AddAttachmentImageToTwoprojects < ActiveRecord::Migration
  def self.up
    change_table :twoprojects do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :twoprojects, :image
  end
end

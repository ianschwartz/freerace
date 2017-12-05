class AddImageToCheckpoint < ActiveRecord::Migration[5.1]
	def change
    create_table :photos do |t|
    	t.string :url
  		t.belongs_to :checkpoint, index: true

  		t.timestamps
    end
  end
end

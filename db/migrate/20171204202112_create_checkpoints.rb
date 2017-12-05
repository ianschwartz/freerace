class CreateCheckpoints < ActiveRecord::Migration[5.1]
  def change

    create_table :races do |t|
      t.string :name
      t.datetime :date

      t.timestamps
    end
    create_table :checkpoints do |t|
    	t.float "lat", :limit => 10
		t.float "lng", :limit => 10
		t.string :name
		t.belongs_to :race, index: true

		t.timestamps
    end
  end
end

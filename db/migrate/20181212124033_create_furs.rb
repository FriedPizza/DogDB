class CreateFurs < ActiveRecord::Migration[5.2]
  def change
    create_table :furs do |t|
      t.string :type_name
      t.timestamps
    end

    def up
    	Fur.create(type_name: "Smooth Coat")
    	Fur.create(type_name: "Long Coat")
    end
  end
end

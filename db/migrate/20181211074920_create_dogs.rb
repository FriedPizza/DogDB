class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :breed_name
      t.string :size
      t.string :maint_cost

      t.timestamps
    end


  end
end

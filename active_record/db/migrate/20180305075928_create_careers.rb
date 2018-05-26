class CreateCareers < ActiveRecord::Migration[5.1]
  def change
    create_table :careers do |t|
      t.string :id
      t.string :name

      t.timestamps
    end
  end
end

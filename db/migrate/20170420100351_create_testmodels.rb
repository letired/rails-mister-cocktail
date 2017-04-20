class CreateTestmodels < ActiveRecord::Migration[5.0]
  def change
    create_table :testmodels do |t|
      t.string :test

      t.timestamps
    end
  end
end

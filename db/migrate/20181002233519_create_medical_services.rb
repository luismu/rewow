class CreateMedicalServices < ActiveRecord::Migration[5.1]
  def change
    create_table :medical_services do |t|
      t.string :pet_name
      t.string :pet_type
      t.string :size
      t.string :description

      t.timestamps
    end
  end
end

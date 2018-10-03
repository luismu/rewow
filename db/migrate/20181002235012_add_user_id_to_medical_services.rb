class AddUserIdToMedicalServices < ActiveRecord::Migration[5.1]
  def change
    add_reference :medical_services, :user, foreign_key: true
  end
end

class MedicalService < ApplicationRecord
    belongs_to :user
    validates :pet_name, presence: { message: "El nombre de la categoría no puede quedar vacío"}
end

class Doctor < ApplicationRecord
  has_many :specialities
  has_many :appointments
  has_many :patients, through: :appointments
end

class Student < ApplicationRecord
  validates :name, presence: true
  validates :cpf, presence: true, uniqueness: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email format' }
end

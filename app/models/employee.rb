class Employee < ApplicationRecord
  belongs_to :library

  validates :first_name, presence: true, length: { minimum: 2, maximum: 255 }
  validates :last_name, presence: true, length: { minimum: 2, maximum: 255 }
  validates :position, presence: true, length: { minimum: 2, maximum: 255 }
  validates :education, presence: true, length: { minimum: 2, maximum: 255 }
  validates :salary, presence: true, numericality: { greater_than_or_equal_to: 0 }

  validate :validate_reasonable_age
  validate :validate_birth_date_cannot_be_in_the_future
  validate :validate_start_work_date

  private

  def validate_birth_date_cannot_be_in_the_future
    if birth_date > Date.current
      errors.add(:base, 'Дата рождения не может быть в будущем')
    end
  end

  def validate_start_work_date
    return if start_work_date.nil?

    if start_work_date < (birth_date + 18.years)
      errors.add(:base, "Дата начала работы не может быть менее даты совершеннолетия.
         Минимальное допустимое значение: #{birth_date + 18.years}")
    end
  end

  def validate_reasonable_age
    age = Date.current.year - birth_date.year
    if age < 18 || age > 75
      errors.add(:base, 'Недопустимый возраст')
    end
  end
end
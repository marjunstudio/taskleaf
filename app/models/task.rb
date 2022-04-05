class Task < ApplicationRecord
    validates :name, presence: true, length: { maximum: 30 }
    validate :validate_name_not_including_commma

    belongs_to :user

    scope :recent, -> {  order(crated_at: :desc) }

    private

    def validate_name_not_including_commma
        errors.add(:name, 'にカンマを含めることはできません') if name&.include?(',')
    end
end

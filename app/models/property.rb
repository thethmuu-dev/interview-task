class Property < ApplicationRecord
    validates :name, presence: true
    validates :rent_fee, presence: true
    validates :address, presence: true
    validates :build_year, presence: true
    validates :remark, presence: true

    has_many :stations, dependent: :destroy
    accepts_nested_attributes_for :stations, reject_if: :all_blank, allow_destroy: true
end

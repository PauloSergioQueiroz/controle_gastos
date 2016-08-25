class ItemRegistroDiario < ApplicationRecord

  belongs_to :item

  belongs_to :registro_diario

  accepts_nested_attributes_for :item, reject_if: :all_blank, allow_destroy: true
end

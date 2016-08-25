class RegistroDiario < ApplicationRecord

    has_many :item_registro_diarios

    has_many :itens, :through => :item_registro_diarios

    accepts_nested_attributes_for :item_registro_diarios, reject_if: :all_blank, allow_destroy: true

end

class Item < ApplicationRecord
            extend Enumerize

    enumerize :tipo, in: [:despesa, :receita], i18n_scope: "tipo"

    enumerize :frequencia, in: [:diario, :semanal, :mensal], i18n_scope: "frequencia"

    enumerize :dia_semana, in: [:domingo, :segunda_feira, :terca_feira, :quarta_feira, :quinta_feira, :sexta_feira, :sabado], i18n_scope: "dia_semana"

    has_many :item_registro_diarios

    has_many :registro_diarios, :through => :item_registro_diarios

end

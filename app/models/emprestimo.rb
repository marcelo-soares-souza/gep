class Emprestimo < ActiveRecord::Base
  belongs_to :user
  belongs_to :equipamento

  validates_presence_of :data_inicio, :data_fim
  validate :fim_apos_inicio

  enum situacao: [ :reservado, :emprestado ]

  private

  def fim_apos_inicio
    return if data_fim.blank? || data_inicio.blank?

    if data_fim < data_inicio
      errors.add(:data_fim, " não pode ser antes da Data Início")
    end 
  end
end

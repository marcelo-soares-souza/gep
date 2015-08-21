class Projeto < ActiveRecord::Base
  validates_presence_of :data_inicio, :data_fim
  validate :fim_apos_inicio

  has_many :equipes
  has_many :users, through: :equipes

  private

  def fim_apos_inicio
    return if data_fim.blank? || data_inicio.blank?

    if data_fim < data_inicio
      errors.add(:data_fim, " não pode ser antes da Data de Início")
    end
  end

end

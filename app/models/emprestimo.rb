class Emprestimo < ActiveRecord::Base
  belongs_to :user
  belongs_to :equipamento

  enum situacao: [ "Reservado", "Emprestado" ]

  validates_presence_of :data_inicio, :data_fim
  validates :data_inicio, :data_fim, :overlap => { :scope => "equipamento_id",
                                                   :message_title => "Já Reservado/Emprestado.",
                                                   :message_content => "Esse equipamento já foi Reservado/Emprestado neste Período"
                                                 }
  validate :fim_apos_inicio

  private

  def fim_apos_inicio
    return if data_fim.blank? || data_inicio.blank?

    if data_fim < data_inicio
      errors.add(:data_fim, " não pode ser antes da Data de Início")
    end
  end
end

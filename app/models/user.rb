class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :registerable,

  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :presence => true, uniqueness: true
  validates :cpf, :presence => true, :cpf => true, uniqueness: true
  validates :nome, :presence => true

  has_many :equipes
  has_many :projetos, through: :equipes
end

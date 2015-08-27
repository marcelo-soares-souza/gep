# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.new( nome: 'Administrador', email: 'admin@localhost', password: 'admin', admin: true ).save(validate: false)

tipo   = Tipo.new( nome: 'Câmera HD').save
marca  = Marca.new( nome: 'Sony').save
modelo = Modelo.new( nome: 'HXR-NX70U').save


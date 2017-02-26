# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dialect.create([{ display_name: 'Yoda' , name: 'yoda' , path: 'http://www.degraeve.com/cgi-bin/babel.cgi' , icon_path: 'yoda.svg' },
	{ display_name: 'Valley Girl', name: 'valley', path: 'http://www.degraeve.com/cgi-bin/babel.cgi' , icon_path: 'valley_girl.svg' },
	{ display_name: 'Binary', name: 'binary', path: 'http://www.degraeve.com/cgi-bin/babel.cgi' , icon_path: 'binary.svg' }])

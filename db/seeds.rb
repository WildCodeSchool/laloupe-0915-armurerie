# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

classes = Classe.create(
	[	{ name: 'Toutes'},
		{ name: 'Paladin'},
		{ name: 'Guerrier'},
		{ name: 'Magicien'},
		{ name: 'Assassin'},
		{ name: 'Cambrioleur'},
		{ name: 'Sentinelle'},
		{ name: 'Gardien des Runes'},
		{ name: 'Capitaine'},
		{ name: 'Champion'},
		{ name: 'Chasseur'},
		{ name: 'Gardien'},
		{ name: 'Maître du savoir'},
		{ name: 'Ménestrel'}

	]
)

users = User.create(
	[	
		{ nickname: 'Syyrius', level: 100, loot: 1000000},
		{ nickname: 'Zongo', level: 2, loot: 9},
		{ nickname: 'Gandalf', level: 1000, loot: 0},
		{ nickname: 'Tsoin', level: 6, loot: 160},
		{ nickname: 'Frodon', level: 3, loot: 150},
		{ nickname: 'Saroumane', level: 100000, loot: 1000000},
		{ nickname: 'Sauron', level: 1000000, loot: 0},
		{ nickname: 'Gimli', level: 150, loot: 16000},
		{ nickname: 'Bilbo', level: 5, loot: 160},
		{ nickname: 'Smeagol', level: 300, loot: 1000},
		{ nickname: 'Smaug', level:30000, loot: 250000000},
		{ nickname: 'Thorin', level: 1500, loot: 160000},
		{ nickname: 'Legolas', level: 300, loot: 160000},
		{ nickname: 'Boromir', level: 300, loot: 120000},
		{ nickname: 'Théoden', level: 3000, loot: 1600}
	]
)

equipments = Equipment.create(
	[
		{name: 'Excalibur', item: 'Sword', location: '2Hands', price:1000000, level:99, bonus: 'Agility', material: 'Steel'},
		{name: 'YouShallNotPass', item: 'Shield', location: 'Arm', price:300, level:66, bonus: 'Protection', material: 'Wood and Iron'},
		{name: 'IceStick', item: 'Stick', location: 'Hand', price:44, level:12, bonus: '', material: 'Wood'},
		{name: '!! TSCHAK !!', item: 'Axe', location: '2Hands', price:888, level:100, bonus: 'Bleed', material: 'Dwarf Steel'},
		{name: 'Fireman', item: 'Helmet', location: 'Head', price:76, level:29, bonus: '', material: 'Iron'},
		{name: 'Shadow', item: 'Cape', location: 'Back', price:104, level:77, bonus: 'Invisibility', material: 'Silk'},
		{name: 'Excalibur2', item: 'Sword', location: '2Hands', price:1000000, level:99, bonus: 'Agility', material: 'Steel'},
		{name: 'YouShallNotPass2', item: 'Shield', location: 'Arm', price:300, level:66, bonus: 'Protection', material: 'Wood and Iron'},
		{name: 'IceStick2', item: 'Stick', location: 'Hand', price:44, level:12, bonus: '', material: 'Wood'},
		{name: '!! TSCHAK !!2', item: 'Axe', location: '2Hands', price:888, level:100, bonus: 'Bleed', material: 'Dwarf Steel'},
		{name: 'Fireman2', item: 'Helmet', location: 'Head', price:76, level:29, bonus: '', material: 'Iron'},
		{name: 'Shadow2', item: 'Cape', location: 'Back', price:104, level:77, bonus: 'Invisibility', material: 'Silk'},
		{name: 'Excalibur3', item: 'Sword', location: 'Head', price:1000000, level:99, bonus: 'Agility', material: 'Steel'},
		{name: 'YouShallNotPass2', item: 'Shield', location: 'Arm', price:300, level:66, bonus: 'Protection', material: 'Wood and Iron'},
		{name: 'IceStick2', item: 'Stick', location: 'Hand', price:44, level:12, bonus: '', material: 'Wood'},
		{name: '!! TSCHAK !!2', item: 'Axe', location: '2Hands', price:888, level:100, bonus: 'Bleed', material: 'Dwarf Steel'},
		{name: 'Fireman2', item: 'Helmet', location: 'Head', price:76, level:29, bonus: '', material: 'Iron'},
		{name: 'Shadow2', item: 'Cape', location: 'Back', price:104, level:77, bonus: 'Invisibility', material: 'Silk'}
	]
)

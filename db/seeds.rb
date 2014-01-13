# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ServiceType.create([
	{name: 'Cleaning', slug: 'cleaning'},
	{name: 'Plumbing', slug: 'plumbing'},
	{name: 'Electrical', slug: 'electrical'},
	{name: 'Maid', slug: 'maid'},
	{name: 'Roofing', slug: 'roofing'},
	{name: 'Baby Care', slug: 'baby-care'},
	{name: 'Elder Care', slug: 'elder-care'}])
# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(
  [
    { email: 'first_user@example.com', password: Rails.application.credentials[:test_user_password],
      name: 'First User' },
    { email: 'second_user@example.com', password: Rails.application.credentials[:test_user_password],
      name: 'Second User' }
  ]
)

Project.create!(
  [
    { name: 'Battersea Power Station',
      description: 'Battersea Power Station is a decommissioned Grade II* listed coal-fired power station.' },
    { name: 'Kings Cross',
      description: 'Kings Cross is one of the largest and most successful redevelopments in London. Over the past 20 years, what was an underused industrial site has been transformed and rejuvenated with new streets, squares and parks, homes, shops, offices, galleries, bars, restaurants, schools, and even a university.' },
    { name: 'Crossrail',
      description: 'Crossrail is a railway construction project mainly in central London. Its aim is to provide a high-frequency hybrid commuter rail and rapid transit system crossing the capital from suburbs.' }
  ]
)

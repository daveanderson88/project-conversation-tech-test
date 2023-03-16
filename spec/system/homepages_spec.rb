# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Homepages', type: :system do
  it 'displays the homepage' do
    visit root_path
    expect(page).to have_content('Rails version')
  end
end

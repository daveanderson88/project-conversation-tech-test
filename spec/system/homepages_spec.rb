# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Homepages', type: :system do
  let(:user) { create :user }

  it 'displays the homepage when logged in' do
    visit root_path

    expect(page).not_to have_content('Projects')

    click_on('Log in')
    expect(page).to have_content('Invalid Email or password.')

    fill_in('Email', with: user.email)
    fill_in('Password', with: user.password)
    click_on('Log in')
    expect(page).to have_content('Projects')
  end
end

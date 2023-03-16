# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Projects', type: :system do
  let(:user) { create :user }
  let!(:project) { create :project }

  it 'displays a list of projects' do
    login_as user
    visit root_path

    expect(page).to have_link(project.name)
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Projects', type: :system do
  let(:user) { create :user }
  let!(:project) { create :project }

  before { login_as user }

  context 'index' do
    it 'displays clickable project names' do
      visit root_path

      click_on(project.name)
      expect(current_path).to eq project_path(project)
    end
  end

  context 'show' do
    it 'displays project details' do
      visit project_path(project)

      expect(page).to have_content(project.name)
      expect(page).to have_content(project.description)
    end
  end
end

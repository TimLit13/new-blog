require 'rails_helper'


feature 'Visitor go to home page' do
  scenario 'Allows visitor watch all articles' do
    visit '/'

    expect(page).to have_content I18n.t('common.articles')  
  end
end

feature 'Visitor go to terms page' do
  scenario 'Allows visitor watch terms of app' do
    visit '/terms'

    expect(page).to have_content I18n.t('static_pages.terms.terms')  
  end
end

feature 'Visitor go to contacts page' do
  scenario 'Allows visitor watch contacts' do
    visit '/contacts'

    expect(page).to have_content I18n.t('static_pages.contacts.contacts')  
  end
end

feature 'Visitor sign in' do
  scenario 'Allows visitor access to authentication page' do
    visit '/users/sign_in'

    expect(page).to have_content I18n.t('devise.sessions.log_in')  
  end
end

feature 'Visitor sign up' do
  scenario 'Allows visitor access to registration page' do
    visit '/users/sign_up'

    expect(page).to have_content I18n.t('devise.registrations.password_confirmation')  
  end
end

feature 'Visitor change language' do
  scenario 'Allows visitor change from en to рус' do
    visit 'en/'

    expect(page).to have_content I18n.t('common.to_rus')  
  end

    scenario 'Allows visitor change from рус to en' do
    visit 'ru/'

    expect(page).to have_content I18n.t('common.to_en')  
  end
end
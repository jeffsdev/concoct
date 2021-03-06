require 'spec_helper'

feature "Adding an ingredient" do
  scenario "allows the administrator to add an ingredient" do
    visit '/admin'
    click_link 'Add a new ingredient'
    fill_in 'ingredient_name', with: 'Vodka'
    click_button 'Add'
    # brings you to edit page
    expect(page).to have_content 'Vodka'
  end
end

feature "Edit an ingredient" do
  scenario "allows the administrator to edit the name of an ingredient" do
    test_ingredient = create_ingredient
    visit '/admin'
    click_link "#{test_ingredient.name}"
    # brings you to edit page
    fill_in 'ingredient_name', with: 'Vodka'
    click_button 'Update'
    expect(page).to have_content 'Vodka'
  end
end

feature "Adding an ingredient category" do
  scenario "allows the administrator to add a category to an ingredient" do
    test_ingredient = create_ingredient
    visit '/admin'
    click_link "#{test_ingredient.name}"
    # brings you to edit page
    expect(page).to have_content "#{test_ingredient.name}"
    click_button 'Primary'
    expect(find('.ingredient-category-list')).to have_content 'Primary'
    expect(find('.add-category-list')).not_to have_content 'Primary'
  end
end

feature "Adding a complimentary ingredient" do
  scenario "allows the administrator to add a complimentary ingredient to an ingredient" do
    test_ingredient = create_ingredient
    test_ingredient_2 = create_ingredient_2
    visit '/admin'
    click_link "#{test_ingredient.name}"
    # brings you to edit page
    expect(page).to have_content "#{test_ingredient.name}"
    click_button "Rum"
    expect(find('.ingredient-combination-list')).to have_content 'Rum'
    expect(find('.add-combination-list')).not_to have_content 'Rum'
  end
end

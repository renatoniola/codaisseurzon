require 'rails_helper'

feature 'Add products', js: true do
  scenario 'add a product to cart' do
    # Point your browser towards the todo path
    visit root_path

    # Enter description in the text field
    #click_on 'button'

    # Press enter (to submit the form)
    page.execute_script("$('add-product').click()")

    # Expect the new task to be displayed in the list of tasks
    #expect(page).to have_content('')
  end
end

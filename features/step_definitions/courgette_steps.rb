Then /^I should see the header "([^\"]*)"$/ do |header|
  response.should have_tag('h1,h2', :text => /#{header}/)
end

Then /^I should see a table where a row contains the cells? "([^\"]*)"$/ do |cells|
  response.should have_tag('table') do |table|
    table.should have_tag('tr') do |tr|
      cells.split(/\s*,\s*/).each do |cell|
        tr.should have_tag('td,th', :text => /#{Regexp.escape(cell)}/)
      end
    end
  end
end

Then /^I should see a table with the headers "([^\"]*)"$/ do |headers|
  response.should have_tag('table') do |table|
    headers.split(/\s*,\s*/).each do |header|
      table.should have_tag('th', :text => /#{Regexp.escape(header)}/)
    end
  end
end

Given /^I enter the address of the feature page$/ do
  visit '/features'
end

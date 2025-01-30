Given(/^I click on Got it button$/) do
  puts("Clicked Got it button")
  find_element(id:"android:id/button1").click
end

And(/^I see "([^"]*)" in From header$/) do |value|
  actual_value=find_element(id:"header_text_unit_from").text
  if(actual_value!=value)
    fail("Expected value is #{value}, but actual value was #{actual_value}!")
  end
end

And(/^I see "([^"]*)" in To header$/) do |value|
  actual_value=find_element(id:"header_text_unit_to").text
  if(actual_value!=value)
    fail("Expected value is #{value}, but actual value was #{actual_value}!")
  end
end

When(/^I click on Swap button$/) do
  find_element(id:"fab").click
end
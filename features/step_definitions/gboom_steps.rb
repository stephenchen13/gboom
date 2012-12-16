When /^I get help for "([^"]*)"$/ do |app_name|
  @app_name = app_name
  step %(I run `#{app_name} help`)
end

# Add more step definitions here
When /^I add the file "(.*?)" with "(.*?)"$/ do |arg1, arg2|
  step %(I run `#{arg2} #{arg1}`)
end

When /^I create a gist from stdin with "(.*?)"$/ do |arg1|
  step %(I run `echo "test content" | #{arg1}`)
end

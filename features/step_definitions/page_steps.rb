When /^the user navigates to the testing website$/ do
  visit_page(HomePage)
  sleep 1
  step "the application navigates to the home page"
  @current_page.dismiss_subscription_popup if @current_page.respond_to? "dismiss_subscription_popup"
end

When /^(?:a|the) user navigates to the Experis website$/ do
  visit_page(ExperisPage)
  step "the application navigates to the Experis page"
end

When /^the user is signed into the SBD website as (.*)$/ do |user|
  step "the user navigates to the SBD website"
  step "the user clicks the menu list" unless ENV["browser_size"] =~ /desktop/i
  steps %Q{
    And the user clicks my black and decker
    And the user fills the home page with #{user} credentials
    And the user clicks the sign in button
    And the user views the page
    And the user views the page again
    And the application navigates to the My Dashboard page
  }
end

When /^the user closes the popup window$/ do
  begin
    @browser.windows.last.use.close
  rescue Exception => e
    p e if verbose_messages
  ensure
    @browser.windows.first.use
  end
end

When /^the application (?:navigates to|remains on) the (.+?(?: or .+?)*?) page$/ do |page_names|
  application_is_on_page?(page_names).should be_true
end

When /^the user clicks(?: the| a)? (.+)$/ do |page_element|
  Watir::Wait.until(10) {@current_page.send(page_element.gsub(" ","_").downcase + "_element").exists?}
  field_type = @current_page.send(page_element.gsub(" ","_").downcase + "_element").class.to_s
  if field_type =~ /link|button/i
    @current_page.send(page_element.gsub(" ","_").downcase)
  else
    @current_page.send(page_element.gsub(" ","_").downcase + "_element").click
  end
end

When /^take a screenshot( after closing the dialog window)?$/ do |close_modal|
  @browser.windows.last.use

  output_folder = (ENV["output_folder"] || "features/output") + "/" + ENV['TIMESTAMP'][0,10]
  scenario_folder = output_folder + '/' + 'success screenshots' + '/'
  screenshot_file = scenario_folder + Time.now.strftime("%Y-%m-%d_%H-%M-%S") + ".png"
  current_path = ''

  screenshot_file.split(/\//).map{|m| m.split(/\\/)}.flatten.each {|folder|
    next if folder =~ /\.png/
    current_path += folder + "/"
    next if folder.downcase =~ /:/
    Dir.mkdir(current_path) unless File.exists?(current_path )
  }

  @browser.screenshot.save screenshot_file
  embed screenshot_file, 'image/png'
end

When /^a new browser window opens$/ do
  @browser.windows.last.use
end

When /^the user (confirms|cancels) on the alert box$/ do |action|
  Watir::Wait.until(10) {@browser.alert.exists?}
  if action == "confirms"
    @browser.alert.ok
  else
    @browser.alert.close
  end
end

When /^the user waits until(?: the| a)? (.+) element is displayed$/ do |page_element|
  Watir::Wait.until(10) {@current_page.send(page_element.gsub(" ","_").downcase + "_element").exists?}
end

When /^the user uploads the file for (.+?)$/ do |message_key|
  message_key = message_key.gsub(" ", "_").upcase
  file_path = @current_page.class.data_class.get_input_data(message_key)["FILE_PATH"]
  @current_page.file_upload(file_path)
end

When /^the user drags (.+) and drops on (.+)$/ do |element1, element2|
  @current_page.send(element1.gsub(" ","_").downcase + "_element").drag_and_drop_on @current_page.send(element2.gsub(" ","_").downcase + "_element")
end


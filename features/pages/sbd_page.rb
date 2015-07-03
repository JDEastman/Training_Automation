include DataHelper

class SBDPage
  include PageObject
  include PageHelper

  # HEADER
  image(:black_and_decker_logo, :alt => "Logo")
  label(:anywhere_on_page, :class => "title")

  button(:search_list, :class => "header-search-open-trigger")
  button(:menu_list, :class => "header-links-trigger")

  button(:my_black_and_decker, :text => "MyBLACK+DECKER")
  text_field(:email_address, :title => "Email Address", :index => 1)
  text_field(:password, :title => "Password")
  button(:sign_in_button, :text => "Sign In")
  link(:forgot_password_link, :href => "/en/my-black-and-decker/forgot-password")
  link(:sign_up_button, :href => "/en/my-black-and-decker/create-your-account")

  button(:hi_username, :text => "Hi, Test!")
  image(:profile_photo_image, :alt => "Profile Photo")
  h3(:profile_user_name, :xpath => "//div[@class='user-details']/h3[@class='name']")
  link(:edit_profile_link, :href => "/en/my-black-and-decker/my-profile")
  link(:sign_out_link, :xpath => "//div[@class='account-features']/p[@class='sign-out-text']/a")
  link(:my_profile_link, :text => "My Profile")
  link(:my_products_link, :text => "My Products")
  link(:my_projects_link, :text => "My Projects")
  link(:my_account_link, :text => "My Account")

  link(:nearby_retailers_link, :href => "/en/support/find-a-retailer")
  link(:register_a_product_link, :href => "/en/support/product-registration")

  button(:language, :class => "region-language-trigger")

  link(:products_navigation_title_link, :text => "Products")
  h2(:products_panel_title, :text => "EXPLORE PRODUCTS")
  link(:all_products_link, :href => "/en/products/all-categories")
  image(:power_tools_image, :alt => "Power tools")
  link(:power_tools_section_title, :text => "Power Tools")
  link(:power_tools_link_1, :xpath => "//nav[@aria-label='Power Tools']/a[1]")
  link(:power_tools_link_2, :xpath => "//nav[@aria-label='Power Tools']/a[2]")
  link(:power_tools_link_3, :xpath => "//nav[@aria-label='Power Tools']/a[3]")
  link(:all_power_tools_link, :text => "All Power Tools")
  image(:accessories_and_batteries_image, :alt => "Accessories Batteries")
  link(:accessories_and_batteries_section_title, :text => "Accessories + Batteries")
  link(:accessories_and_batteries_link_1, :xpath => "//nav[@aria-label='Accessories + Batteries']/a[1]")
  link(:accessories_and_batteries_link_2, :xpath => "//nav[@aria-label='Accessories + Batteries']/a[2]")
  link(:all_accessories_and_batteries_link, :text => "All Accessories + Batteries")
  image(:cleaning_image, :alt => "Cleaning")
  link(:cleaning_section_title, :text => "Cleaning")
  link(:cleaning_link_1, :xpath => "//nav[@aria-label='Cleaning']/a[1]")
  link(:cleaning_link_2, :xpath => "//nav[@aria-label='Cleaning']/a[2]")
  link(:cleaning_link_3, :xpath => "//nav[@aria-label='Cleaning']/a[3]")
  link(:all_cleaning_link, :text => "All Cleaning")
  image(:lawn_and_garden_image, :alt => "lawn and garden")
  link(:lawn_and_garden_section_title, :text => "Lawn + Garden")
  link(:lawn_and_garden_link_1, :xpath => "//nav[@aria-label='Lawn + Garden']/a[1]")
  link(:lawn_and_garden_link_2, :xpath => "//nav[@aria-label='Lawn + Garden']/a[2]")
  link(:lawn_and_garden_link_3, :xpath => "//nav[@aria-label='Lawn + Garden']/a[3]")
  link(:all_lawn_and_garden_link, :text => "All Lawn + Garden")
  image(:small_appliances_image, :alt => "Small Appliances")
  link(:small_appliances_section_title, :text => "Small Appliances")
  link(:small_appliances_link_1, :xpath => "//nav[@aria-label='Small Appliances']/a[1]")
  link(:small_appliances_link_2, :xpath => "//nav[@aria-label='Small Appliances']/a[2]")
  link(:small_appliances_link_3, :xpath => "//nav[@aria-label='Small Appliances']/a[3]")
  link(:all_small_appliances_link, :text => "All Small Appliances")
  h2(:featured_products_callout_title, :text => "Featured Products")
  link(:featured_product_1, :xpath => "//figure[@class='primary-nav-callout-image']/a[1]")
  link(:featured_product_2, :xpath => "//figure[@class='primary-nav-callout-image']/a[1]")

  link(:ideas_and_inspiration_navigation_title_link, :text => "Ideas + Inspiration")
  h2(:ideas_and_inspiration_panel_title, :text => "Explore Ideas + Inspiration")
  link(:view_ideas_and_inspiration_link, :href => "/en/ideas-and-inspiration")
  image(:room_to_room_image, :alt => "room to room")
  link(:room_to_room_section_title, :text => "Room to Room")
  link(:room_to_room_link_1, :xpath => "//nav[@aria-label='Room to Room']/a[1]")
  link(:room_to_room_link_2, :xpath => "//nav[@aria-label='Room to Room']/a[2]")
  link(:room_to_room_link_3, :xpath => "//nav[@aria-label='Room to Room']/a[3]")
  image(:home_projects_image, :alt => "Home Projects")
  link(:home_projects_section_title, :text => "Home Projects")
  link(:home_projects_link_1, :xpath => "//nav[@aria-label='Home Projects']/a[1]")
  link(:home_projects_link_2, :xpath => "//nav[@aria-label='Home Projects']/a[2]")
  link(:home_projects_link_3, :xpath => "//nav[@aria-label='Home Projects']/a[3]")
  link(:all_home_projects_link, :text => "All Home Projects")
  image(:kids_projects_image, :alt => "Kids Projects")
  link(:kids_projects_section_title, :text => "Kids' Projects")
  link(:kids_projects_link_1, :xpath => "//nav[contains(@aria-label,'Kids')]/a[1]")
  link(:kids_projects_link_2, :xpath => "//nav[contains(@aria-label,'Kids')]/a[2]")
  link(:kids_projects_link_3, :xpath => "//nav[contains(@aria-label,'Kids')]/a[3]")
  link(:all_kids_projects_link, :text => "All Kids' Projects")
  image(:outdoor_projects_image, :alt => "Outdoor Projects")
  link(:outdoor_projects_section_title, :text => "Outdoor Projects")
  link(:outdoor_projects_link_1, :xpath => "//nav[@aria-label='Outdoor Projects']/a[1]")
  link(:outdoor_projects_link_2, :xpath => "//nav[@aria-label='Outdoor Projects']/a[2]")
  link(:outdoor_projects_link_3, :xpath => "//nav[@aria-label='Outdoor Projects']/a[3]")
  link(:all_outdoor_projects_link, :text => "All Outdoor Projects")
  image(:discussions_image, :alt => "discussions")
  link(:discussions_section_title, :text => "Discussions")
  link(:discussions_link_1, :xpath => "//nav[@aria-label='Discussions']/a[1]")
  link(:discussions_link_2, :xpath => "//nav[@aria-label='Discussions']/a[2]")
  link(:discussions_link_3, :xpath => "//nav[@aria-label='Discussions']/a[3]")
  link(:all_discussions_link, :text => "All Discussions")
  h2(:featured_diy_projects_callout_title, :text => "Featured DIY Projects")
  span(:featured_project_1, :xpath => "//figure[@class='primary-nav-callout-image']/link[1]")
  span(:featured_project_2, :xpath => "//figure[@class='primary-nav-callout-image']/link[1]")

  link(:support_navigation_title_link, :text => "Support")

  text_field(:site_search, :type => "search")
  button(:submit_search_button, :type => "submit", :index => 1)

  # FOOTER
  div(:footer_callouts, :class => "footer-callouts")
  h2(:nearby_retailer_footer_callout_title, :xpath => "//aside[@class='find-retailer']/h2")
  text_field(:nearby_retailer_zip_code, :name => "zipCode")
  button(:nearby_retailer_go_button, :text => "Go")
  h2(:contact_us_footer_callout_title, :xpath => "//aside[@class='footer-callout']/h2")
  h2(:attend_an_event_footer_callout_title, :xpath => "(//aside[@class='footer-callout']/a/h2)[1]")

  h2(:join_our_mailing_list_title, :xpath => "//aside[@class='join-mailing-list']/h2")
  text_field(:join_our_mailing_list_email_address, :title => "Get news, special offers and promotions...")
  button(:join_our_mailing_list_subscribe_button, :text => "Subscribe")
  h2(:connect_with_us_title, :xpath => "//aside[@class='social-connections']/h2")
  link(:connect_with_us_facebook, :xpath => "//img[@alt='facebook']/parent::a")
  link(:connect_with_us_instagram, :xpath => "//img[@alt='instagram']/parent::a")
  link(:connect_with_us_twitter, :xpath => "//img[@alt='twitter']/parent::a")
  link(:connect_with_us_youtube, :xpath => "//img[@alt='youtube']/parent::a")
  link(:connect_with_us_pinterest, :xpath => "//img[@alt='pinterest']/parent::a")
  link(:connect_with_us_google_plus, :xpath => "//img[@alt='google+']/parent::a")

  h2(:products_link_list_title, :class => "link-list-title", :index => 0)
  link(:product_story_link, :text => "Product Story")
  link(:lawn_and_garden_link, :href => "/en/products/lawn-and-garden", :index => 2)
  link(:small_appliances_link, :text => "Small Appliances", :index => 1)
  link(:all_categories_link, :text => "All Categories")

  h2(:projects_and_community_link_list_title, :class => "link-list-title", :index => 1)
  link(:ideas_and_inspiration_link, :text => "Ideas + Inspiration", :index => 1)
  link(:all_ideas_and_inspirations_link, :text => "All Ideas & Inspirations")
  link(:community_link, :href => "/en/about/community", :index => 0)
  link(:milestones_link, :text => "Milestones")

  h2(:support_link_list_title, :class => "link-list-title", :index => 2)
  link(:contact_us_link, :href => "/en/support/contact-us", :index => 0)
  link(:safety_recalls_link, :text => "Safety Recalls")
  link(:find_a_service_center_link, :text => "Find A Service Center")
  link(:unsubscribe_diy_deals, :text => "Unsubscribe DIY Deals")

  h2(:black_and_decker_link_list_title, :class => "link-list-title", :index => 3)
  link(:about_link, :text => "About")
  link(:events_link, :text => "Events")
  link(:careers_link, :text => "Careers")
  link(:sustainability_link, :text => "Sustainability")

  link(:term_of_service_link, :xpath => "//nav[@class='footer-utility-links']/a[1]")
  link(:privacy_policy_link, :xpath => "//nav[@class='footer-utility-links']/a[2]")



  # Name: page_title_is_correct
  # Input: No input is needed.
  # Purpose: Checks whether the page title is correct or not

  def page_title_is_correct
    ( text =~ self.class.page_title_validation_value ) !=nil
  end

  # Name: page_url_is_correct
  # Input: No input needed.
  # Purpose: Checks whether the page url is correct or not

  def page_url_is_correct
    ( current_url =~ self.class.page_url_validation_value ) !=nil
  end

  # Name: instantiate_page_data_object
  # Input: String (e.g.- default data)
  # Purpose: To set up an instance of page data object

  def instantiate_page_data_object(data_key = self.class.data_class.default_data)
    @fillable_form_fields = form_field_order()
    @current_page_data_object = self.class.data_class.new(data_key)
  end

  # Name: instantiate_page_data_object_using_partial_keys
  # Input: String containing partial keys
  # Purpose: To set up an instance of page data object

  def instantiate_page_data_object_using_partial_keys(partial_keys, number = nil, fixed_field_offsets = [])
    @fillable_form_fields = form_field_order()
    @current_page_data_object = self.class.data_class.new(partial_keys, number, fixed_field_offsets)
  end

  # Name: fill_all_form_data
  # Input: No input is needed.
  # Purpose: It fills all the required data fields of the form

  def fill_all_form_data()
    if verbose_messages
      p @fillable_form_fields
      p @current_page_data_object
    end

    @fillable_form_fields.each do |field|
      value = @current_page_data_object.retrieve_data_for(field)
      enter_element_value(field, value) if value and (value != "nil")
    end
  end

  # Name: enter_element_value
  # Input: String (e.g.- field), Int (e.g.- the value to enter)
  # Purpose: It enters a value to a field

  def enter_element_value(original_field, value)
    field = original_field.downcase.gsub(" ", "_")
    unless self.respond_to? field + "_element"
      warn "undefined method '#{field + '_element'}' for #{@current_page.class}"
      return
    end

    field_type = self.send(field + "_element").class.to_s

    if verbose_messages
      p field_type
      p field
      p value
    end

    if value.class.to_s == "Array"
      value = eval(value[0]).call(:param_string => value[1], :current_page => self, :repeatable_field_index => value[2])
    end

    if value =~ /^lambda/
      value = eval(value).call(:current_page => self)
    end

    formatted_value = value.to_s.downcase.gsub(" ", "_")

    p value if verbose_messages

    return if value.nil? or (value == "nil")

    keep_trying_to_set(1) do
      case field_type
        when /select/i
          Watir::Wait.until(10) {self.send(field + "_element").exists?}
          return if self.send(field.downcase.gsub(" ", "_")) == value and value != "Please Select"
          self.send(field + "=", value)
        when /text/i
          Watir::Wait.until(10) {self.send(field + "_element").exists?}
          return if self.send(field) == value and value != ""
          self.send(field + "=", value)
          self.send(field + "_element").send_keys(:tab)
        when /checkbox/i
          Watir::Wait.until(10) {self.send(field + "_element").exists?}
          #value should be: "check" or "uncheck"
          self.send(value.downcase + "_" + field)
        when /radio/i
          Watir::Wait.until(10) { self.send( field + "_" + formatted_value + "_element" ).exists? }
          self.send( "select_" + field + "_" + formatted_value )
        when /label/i
          if value =~ /check/
            if (value == "check" and not self.send( field + "_element" ).element.parent.checkbox.checked?) or
                (value == "uncheck" and self.send( field + "_element" ).element.parent.checkbox.checked?)
              self.send( field + "_element" ).click
            end
          else #radio button
            if ENV['browser_type'] == 'ie'
              self.send(field + "_" + formatted_value + "_element").click
            else
              self.send(field + "_" + formatted_value + "_element").focus
              self.send(field + "_" + formatted_value + "_element").fire_event "onclick"
            end
          end
        else
          raise("Unknown field type:" + field_type)
      end
    end
  end

  def get_select_list_options(select_list_name, ignore = "")
    self.send("#{select_list_name}_element").options.to_a.select {|option| option.text !~ /^(#{ignore})/i}
  end

  def radio_list_for_group(radio_label_name)
    self.send(radio_label_name.gsub(" ","_").downcase + "_element").parent.radios
  end

  def labels_from_radio_group(radio_label_name)
    p radio_label_name
    p self.send(radio_label_name.gsub(" ","_").downcase + "_element").parent.lis
    self.send(radio_label_name.gsub(" ","_").downcase + "_element").parent.lis.each{|r| p r.text}
    self.send(radio_label_name.gsub(" ","_").downcase + "_element").parent.lis.map{ |list_item| list_item.text}
  end

  # Name: verify_checkbox_status
  # Input: String (name of checkbox), String (status of the checkbox e.g. - checked)
  # Purpose: It waits until the following message: "Please wait while we are processing your request".

  def verify_checkbox_status(name, status)
    case status.upcase
      when "CHECKED"
        send("#{name}_element").parent.element.checkbox.checked?
      when "UNCHECKED"
        not send("#{name}_element").parent.element.checkbox.checked?
      when "DISABLED"
        send("#{name}_element").parent.element.checkbox.disabled?
      when "ENABLED"
        send("#{name}_element").parent.element.checkbox.enabled?
    end
  end

  # Name: verify_element_status
  # Input: String (name of element), String (status of the element e.g. - disabled)
  # Purpose: verify if an element is disabled or enabled

  def verify_element_status(name, status)
    case status.upcase
      when "DISABLED"
        send("#{name}_element").disabled?
      when "ENABLED"
        send("#{name}_element").enabled?
    end
  end

  def file_upload(file_path)
    wsh = WIN32OLE.new('Wscript.Shell')
    sleep 1
    wsh.SendKeys("#{file_path}")
    sleep 1
    wsh.SendKeys "~"
  end

end
class ExperisPage < SBDPage

  page_url(environment_url)

  list_item(:enter_as_a_job_seeker, :id => "kwick1")
  select_list(:country, :id => "country1")
  select_list(:language, :id => "language1")
  button(:go_button, :class => "go-button")

  # Name: form_field_order
  # Input: No input is needed.
  # Purpose: Fills the details of the various fields in required order

  def form_field_order
    %w{

    }
  end

  # Name: data_class
  # Input:  No input is needed.
  # Purpose: Return the data class for the page

  def self.data_class
    ExperisPageData
  end

  # Name: page_title_validation_value
  # Input: none
  # Purpose: return the validation value for the page title

  def self.page_title_validation_value
    /ManpowerGroup/
  end

  # Name: page_url_validation_value
  # Input: none
  # Purpose: return the validation value for the page url

  def self.page_url_validation_value
    /experis/
  end

end






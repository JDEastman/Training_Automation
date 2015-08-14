class ExperisJobsPage < SBDPage

  text_field(:search, :id => "keywords")
  text_field(:zip, :id => "zip")
  button(:search_for_jobs, :class => "jobsSearch")

  paragraph(:working_with_experis_paragraph, :xpath => "//div[@class='WWEcontent']//p")
  div(:experis_continued_support, :text => "Does Experis continue to support me after I start a job?")

  div(:job_results, :class => "ColOne")

  # Name: form_field_order
  # Input: No input is needed.
  # Purpose: Fills the details of the various fields in required order

  def form_field_order
    %w{
        search
        zip
    }
  end

  # Name: data_class
  # Input:  No input is needed.
  # Purpose: Return the data class for the page

  def self.data_class
    ExperisJobsPageData
  end

  # Name: page_title_validation_value
  # Input: none
  # Purpose: return the validation value for the page title

  def self.page_title_validation_value
    /Connect to the Right Jobs/
  end

  # Name: page_url_validation_value
  # Input: none
  # Purpose: return the validation value for the page url

  def self.page_url_validation_value
    /ExperisJobs/
  end

end






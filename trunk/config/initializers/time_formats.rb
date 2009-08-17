ActiveSupport::CoreExtensions::Time::Conversions::DATE_FORMATS.merge!(
  :month_and_year => "%B %Y",
  :short_ordinal => lambda { |time| time.strftime("%B #{time.day.ordinalize}, %Y") }
)

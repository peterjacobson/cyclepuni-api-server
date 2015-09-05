require 'support/helpers/feature_helper'
RSpec.configure do |config|
  config.include Features::FeatureHelper, type: :feature
end

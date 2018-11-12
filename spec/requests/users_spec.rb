require 'rails_helper'

describe "Users", type: :request do
  include Committee::Test::Methods
  include Rack::Test::Methods

  def committee_schema
    @committee_schema ||=
      begin
        driver = Committee::Drivers::OpenAPI2.new
        schema = JSON.parse(File.read(schema_path))
        driver.parse(schema)
      end
  end

  def schema_path
    Rails.root.join('swagger', 'swagger.json')
  end

  describe "GET /" do
    it "works! (now write some real specs)" do
      get '/'
      assert_schema_conform
    end
  end
end

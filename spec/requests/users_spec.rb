require 'rails_helper'

describe "Users", type: :request do
  include Committee::Test::Methods
  include Rack::Test::Methods

  def committee_schema
    @committee_schema ||= begin
        driver = Committee::Drivers::OpenAPI2.new
        schema = JSON.parse(File.read(schema_path))
        driver.parse(schema)
      end
  end

  def schema_path
    Rails.root.join('swagger', 'swagger.json')
  end

  describe "POST /users" do
    it "トップ" do
      post '/users', { name: 'レバ太郎', age: 20, birthday: '2010-01-01', email: 'levetaro@leve.jp' }
      assert_schema_conform
    end
  end
end

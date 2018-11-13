require 'rails_helper'

describe "Users", type: :request do
  describe "POST /users" do
    it "ユーザー作成API" do
      post '/users', { name: 'レバ太郎', age: 20, birthday: '2010-01-01', email: 'levetaro@leve.jp' }
      assert_schema_conform
    end
  end
end

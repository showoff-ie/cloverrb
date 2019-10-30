module Cloverrb
  class Category < Client

    def all(role=nil)
      url = "/merchants/#{@merchant_id}/categories"
      url += "?filter=role=#{role}" if role
      get(@token, url)
    end

    def find(id)
      url = "/merchants/#{@merchant_id}/categories/#{id}"
      get(@token, url)
    end
  end
end
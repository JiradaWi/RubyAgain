class WelcomeController < ApplicationController
  def index
    @fruit = "banana"
    @animal = {
      id: 1,
      data: {name: "Wolly",type: "dog"}
  }

  @sql = "Select * from product"
  @records_array = ActiveRecord::Base.connection.execute(@sql)
  end
end

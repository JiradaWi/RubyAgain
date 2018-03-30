class AddProductController < ApplicationController
  def index

  end

  def create
  #  @data = params['Name']
    @data = {
      Name: params['Name'],
      Description: params['Description'],
      Price: params['Price'],
      CatId: '1',
      Image: params['Image']
    }
    @sql = 'INSERT INTO product (Name, Description, Price, CatId, Image) VALUES(\''+params['Name']+'\',\''+params['Description']+'\',\''+params['Price']+'\', 1,\''+params['Image']+'\')'
    @records_array = ActiveRecord::Base.connection.execute(@sql)
  end
end

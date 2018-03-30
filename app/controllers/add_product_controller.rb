class AddProductController < ApplicationController
  def index
    @category = ActiveRecord::Base.connection.execute('SELECT * FROM category')
  end

  def create
  #  @data = params['Name']
    @data = {
      Name: params['Name'],
      Description: params['Description'],
      Price: params['Price'],
      CatId: params['catId'],
      Image: params['Image']
    }
    @sql = 'INSERT INTO product (Name, Description, Price, CatId, Image) VALUES(\''+params['Name']+'\',\''+params['Description']+'\',\''+params['Price']+'\','+params['catId']+',\''+params['Image']+'\')'
    ActiveRecord::Base.connection.execute(@sql)
  end
end

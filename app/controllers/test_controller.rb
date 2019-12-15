class TestController < ApplicationController

  def index
  end

  def new
    @test = Test.new
  end

  def create
    @test =  Test.create(test_params)
  end

  private
    def test_params
      params.require(:test).permit(:name, :image, :text)
    end

end

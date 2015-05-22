class FloodsController < ApplicationController
  def index
    @floods = Flood.all.order('created_at desc').limit(1000)
    render json: @floods
  end
  def show
    begin
      @flood = Flood.find(params[:id])
      render json: @flood
    rescue
      render json: {message: "Resource not found"}, status: 404
    end
  end
  def create
    @flood = Flood.create(flood_params)
    @flood.save
    render json: {message: "Resource created"}
  end
  private
  def flood_params
    params.require(:flood).permit(:normal_level,:current_level,:location,:flooded,:upstream)
  end
end
__END__
Sample CURL request in to this application
curl -H "Content-Type: application/json" "http://api.devinmui.c9.io/api/v1/floods" -d '
{
  "flood": {
    "normal_level":3.5,
    "current_level":5,
    "location":"Georgia",
    "flooded":true
  }
}'
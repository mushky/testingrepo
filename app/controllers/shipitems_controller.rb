require "uri"
require "net/http"

class ShipitemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 
  
  def index
  	@shipitems = ShipItem.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
  end
	
  def new
    @shipitem = ShipItem.new
  end  
  
  def send_json
    url = "http://10.0.0.80:10005"
    uri = URI.parse(url)
    http = Net::HTTP.new(uri.host, uri.port)

    request = Net::HTTP::Post.new(
      uri.request_uri, 
      'Content-Type' => 'application/json'
    )

    request.body = shipitem_json = '{
      
      "item_type_name": #{@shipitem.part},
      "alt_item_number": #{@shipitem.serial},
      "description": #{@shipitem.description},
      "quantity": #{@shipitem.quantity},
      "date:": #{@shipitem.date},

      "alt_item_number": "",
      "category": "",
      "checkout_duration": "",
      "cost": "",
      "auto_sn":, "",
      "auto_sn_value": "",
      "cost_method": "",
      "dimension_unit": "",
      "height": ""
      "length": "",
      "linked_file": "",
      "list_price": "",
      "manager": "",
      "manufacturer": "",
      "max_stock_level": "",
      "min_stock_level": "",
      "note_text": "",
      "reorder_qty": "",
      "sale_price": "",
      "supplier": "",
      "supplier_number": "",
      "require_customers": "",
      "track_date_codes": "",
      "track_lots": "",
      "track_pallets": "",
      "require_pos": "",
      "track_serial_numbers": "",
      "require_suppliers": "",
      "unit_of_measure": "",
      "weight": "",
      "weight_unit": "",
      "width": "",
      "external_key": ""

    }'

    response = http.request(request)
    puts(response.body)

  end

  def create
    @shipitem = ShipItem.new(shipitem_params)
    if @shipitem.save
      redirect_to shipitems_path
      send_json

    else
      render 'new'
    end
  end

  def show
  	@shipitem = ShipItem.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render json: @shipitem }
    end
  end

  def edit
    @shipitem = ShipItem.find(params[:id])
  end

  def update
    @shipitem = ShipItem.find(params[:id])

    if @shipitem.update(shipitem_params)
      redirect_to @shipitem
    else
      render 'edit'
    end
    send_json
  end

  def delete
    @shipitem = ShipItem.find(params[:id])
  end

  def destroy
    @shipitem = ShipItem.find(params[:id])
    @shipitem.destroy

    redirect_to shipitems_path
  end

  private
    def shipitem_params
      params.require(:shipitem).permit(:id, :part, :serial, :date, :description, :quantity, :completed, :shipping_number)
    end
end

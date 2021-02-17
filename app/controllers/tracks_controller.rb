class TracksController < ApplicationController
  before_action :set_track, only: [:show, :edit, :update, :destroy, :vendorRecieved, :vendorSent, :recieved]

  # GET /tracks
  # GET /tracks.json
  def index
    @tracks = Track.all
  end

  # GET /tracks/1
  # GET /tracks/1.json
  def show
  end

  # GET /tracks/new
  def new
    @track = Track.new
  end

  # GET /tracks/1/edit
  def edit
  end

  # POST /tracks
  # POST /tracks.json
  def create
    @track = Track.new(track_params)

    respond_to do |format|
      if @track.save
        format.html { redirect_to @track, notice: 'Track was successfully created.' }
        format.json { render :show, status: :created, location: @track }
      else
        format.html { render :new }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tracks/1
  # PATCH/PUT /tracks/1.json
  def update
    respond_to do |format|
      if @track.update(track_params)
        format.html { redirect_to @track, notice: 'Track was successfully updated.' }
        format.json { render :show, status: :ok, location: @track }
      else
        format.html { render :edit }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  def vendorRecieved
    @track.vendor_recieved = true
    if @track.save
      redirect_to '/vendor/orders', notice: 'Order marked as recieved'
    else
      redirect_to '/vendor/orders', notice: "Error: #{@track.error}"
    end
  end

  def vendorSent
    @track.vendor_sent = true
    if @track.save
      redirect_to '/vendor/orders', notice: 'Order marked as sent'
    else
      redirect_to '/vendor/orders', notice: "Error: #{@track.error}"
    end
  end

  def recieved
    @track.recieved = true
    if @track.save
      redirect_to '/vendor/orders', notice: 'Order marked as recieved'
    else
      redirect_to '/vendor/orders', notice: "Error: #{@track.error}"
    end
  end

  def delivered
    @track.delivereds = true
    if @track.save
      redirect_to '/vendor/orders', notice: 'Order marked as recieved'
    else
      redirect_to '/vendor/orders', notice: "Error: #{@track.error}"
    end
  end

  # DELETE /tracks/1
  # DELETE /tracks/1.json
  def destroy
    @track.destroy
    respond_to do |format|
      format.html { redirect_to tracks_url, notice: 'Track was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track
      @track = Track.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def track_params
      params.require(:track).permit(:spree_line_item_id, :vendor_recieved, :vendor_sent, :recieved, :spree_user, :quantity)
    end
end

class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  before_action :def_salamek

  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.all
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
    # respond_to do |format|
    #   format.html { redirect_to client_url(@client.id), notice: 'Client was successfully created.' }
    #   format.json { render :show, status: :created, location: @client }
    # end
  end

  def delete_all
    Client.delete_all
    redirect_to clients_path, notice: 'All customers are now deleted' 
  end
  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(client_params)
    respond_to do |format|
      if @client.save
        format.html { redirect_to client_url(@client.id), notice: 'Client was successfully created.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to client_url(@client.id), notice: 'Client was successfully updated.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { 
        redirect_to clients_url, 
        notice: 'Client was successfully destroyed.' 
      }
      format.json { head :no_content }
    end
  end

  private

    def def_salamek
      @salam = "Bonjour/Salam/Mbada/Salut/Kasumay ..."
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_params
      params.require(:client).require(:nom)
      params.require(:client).permit(:nom, 
        :prenom, 
        :adresse, 
        :numero_telephone,
        :email
      )
    end
end
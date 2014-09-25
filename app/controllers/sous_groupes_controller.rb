class SousGroupesController < ApplicationController
  before_action :set_sous_groupe, only: [:show, :edit, :update, :destroy]

  # GET /sous_groupes
  # GET /sous_groupes.json
  def index
    @sous_groupes = SousGroupe.all
  end

  # GET /sous_groupes/1
  # GET /sous_groupes/1.json
  def show
  end

  # GET /sous_groupes/new
  def new
    @sous_groupe = SousGroupe.new
  end

  # GET /sous_groupes/1/edit
  def edit
  end

  # POST /sous_groupes
  # POST /sous_groupes.json
  def create
    @sous_groupe = SousGroupe.new(sous_groupe_params)

    respond_to do |format|
      if @sous_groupe.save
        format.html { redirect_to @sous_groupe, notice: 'Sous groupe was successfully created.' }
        format.json { render :show, status: :created, location: @sous_groupe }
      else
        format.html { render :new }
        format.json { render json: @sous_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sous_groupes/1
  # PATCH/PUT /sous_groupes/1.json
  def update
    respond_to do |format|
      if @sous_groupe.update(sous_groupe_params)
        format.html { redirect_to @sous_groupe, notice: 'Sous groupe was successfully updated.' }
        format.json { render :show, status: :ok, location: @sous_groupe }
      else
        format.html { render :edit }
        format.json { render json: @sous_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sous_groupes/1
  # DELETE /sous_groupes/1.json
  def destroy
    @sous_groupe.destroy
    respond_to do |format|
      format.html { redirect_to sous_groupes_url, notice: 'Sous groupe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sous_groupe
      @sous_groupe = SousGroupe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sous_groupe_params
      params.require(:sous_groupe).permit(:nom, :principal_groupe_id)
    end
end

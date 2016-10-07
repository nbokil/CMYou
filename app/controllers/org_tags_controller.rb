class OrgTagsController < ApplicationController
  before_action :set_org_tag, only: [:show, :edit, :update, :destroy]

  # GET /org_tags
  # GET /org_tags.json
  def index
    @org_tags = OrgTag.all
  end

  # GET /org_tags/1
  # GET /org_tags/1.json
  def show
  end

  # GET /org_tags/new
  def new
    @org_tag = OrgTag.new
  end

  # GET /org_tags/1/edit
  def edit
  end

  # POST /org_tags
  # POST /org_tags.json
  def create
    @org_tag = OrgTag.new(org_tag_params)

    respond_to do |format|
      if @org_tag.save
        format.html { redirect_to @org_tag, notice: 'Org tag was successfully created.' }
        format.json { render :show, status: :created, location: @org_tag }
      else
        format.html { render :new }
        format.json { render json: @org_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /org_tags/1
  # PATCH/PUT /org_tags/1.json
  def update
    respond_to do |format|
      if @org_tag.update(org_tag_params)
        format.html { redirect_to @org_tag, notice: 'Org tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @org_tag }
      else
        format.html { render :edit }
        format.json { render json: @org_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /org_tags/1
  # DELETE /org_tags/1.json
  def destroy
    @org_tag.destroy
    respond_to do |format|
      format.html { redirect_to org_tags_url, notice: 'Org tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_org_tag
      @org_tag = OrgTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def org_tag_params
      params.require(:org_tag).permit(:organization_id, :tag_id)
    end
end

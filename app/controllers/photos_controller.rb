class PhotosController < ApplicationController
  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.all

    @photo = Photo.new
    @photolank=Photo.order('like DESC').limit(3)

    #.select('name,avatar_file_name,like')

   #respond_to do |format|
    #  format.html # index.html.erb
     # format.json { render json: @photos }
    #end
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = Photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.json
  def new
    @photo = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/1/edit
  def edit
    @photo = Photo.find(params[:id])
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(params[:photo])

    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
        format.json { render json: @photo, status: :created, location: @photo }
      else
        format.html { render action: "new" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photos/1
  # PUT /photos/1.json
  def update
    @photo = Photo.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to photos_url }
      format.json { head :no_content }
    end
  end
  # POST /photos/like
  # POST /photos/like.json
  def like

   @photo = Photo.find(params[:id])


   likenum=@photo.like+1

  #@photo.update_attributes(:like => likenum)


    respond_to do |format|
      if @photo.update_attributes(:like => likenum)
            #format.json { head :no_content }
            format.json { render json: @photo.like }
      else
           format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /photos/look
  # POST /photos/look.json
  def look

   @photo = Photo.find(params[:id])


   looknum=@photo.look+1


    respond_to do |format|
      if @photo.update_attributes(:look => looknum)
            #format.json { head :no_content }
            format.json { render json: @photo.look }
      else
           format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end



end

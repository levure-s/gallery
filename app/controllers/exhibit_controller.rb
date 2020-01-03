class ExhibitController < ApplicationController
  def index
    @posts = Exhibit.all.order(created_at: :desc)
  end

  def show
   @post = Exhibit.find_by(id: params[:id])
 end

 def new
   @post = Exhibit.new
 end

 def create
   @post = Exhibit.new(
     name: params[:name],
     comment: params[:comment],
     #title: params[:title]
   )

   if params[:image]
      @post.image_name = "#{@post.id}.jpg"
      image = params[:image]
      File.binwrite("public/post_image/#{@post.image_name}", image.read)
    end

   if @post.save
     flash[:notice] = "投稿を作成しました"
     redirect_to("/exhibit/index")
   else
     render("exhibit/new")
   end
 end

 def edit
   @post = Exhibit.find_by(id: params[:id])
 end

 def update
   @post = Exhibit.find_by(id: params[:id])
   @post.comment = params[:comment]
   if @post.save
     flash[:notice] = "投稿を編集しました"
     redirect_to("/exhibit/index")
   else
     render("exhibit/edit")
   end
 end

 def destroy
   @post = Exhibit.find_by(id: params[:id])
   @post.destroy
   flash[:notice] = "投稿を削除しました"
   redirect_to("/exhibit/index")
 end
end

class PostsController < ActionController::Base
   #view
    def index   
        @posts = Post.all
    end 
    #view
    def show  
        @post =    Post.find(params[:id])
    end 

    #view 
    def new
        @post =    Post.new 
    end 
    
    #view
    def edit
        @post = Post.find(params[:id])
    end

    def create
        @post = Post.new(post_params)
        @post.save
        redirect_to @post, notice: "post has been created!"
    end

    def update   
        @post = Post.find(params[:id])
        @post.update(post_params)
        redirect_to @post, notice: "post has been updated!"
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
    end
    
    def post_params
        params.require(:post).permit(:title,:body)
    end
end

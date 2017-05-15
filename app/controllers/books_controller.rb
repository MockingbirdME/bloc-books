class BooksController < BlocWorks::Controller

  def welcome
    @starting_book = "Eloquent Ruby"
    "Welcome to BlocBooks!"
    render :welcome, book: @starting_book
  end

  def index
    render :index, books: Book.all
  end

  def show
    # @id = getID
    # @book = Book.find(@id)
    # binding.pry
    book = Book.find(params['id'])
    render :show, book: book
    # book = Book.first
    # render :show, book: book
  end

  def new
    render :new
  end

  def create

  end

  def edit
    render :edit
  end

  def update

  end

  def destroy

  end

  private

  def getID
    @env_id = @env["PATH_INFO"].split('/')[-1].to_i
    @env_id != 0 ? @env_id : 1
  end


end

class PagesController < AuthenticatedController
  load_and_authorize_resource

  # def index
  # def show
  # def new
  # def edit

  def create
    if @page.save
      redirect_to @page, notice: 'Page was successfully created.'
    else
      render :new
    end
  end

  def update
    if @page.update(page_params)
      redirect_to @page, notice: 'Page was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @page.destroy!
    redirect_to pages_url, notice: 'Page was successfully destroyed.'
  end

  private

  def page_params
    params.require(:page).permit(:name, :url, :html)
  end
end

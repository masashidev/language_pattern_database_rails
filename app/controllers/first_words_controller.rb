class FirstWordsController < ApplicationController
  before_action :set_first_word, only: %i[ show edit update destroy ]

  # GET /first_words or /first_words.json
  def index
    @first_words = FirstWord.all
    @first_word = FirstWord.new
  end

  # GET /first_words/1 or /first_words/1.json
  def show
  end

  # GET /first_words/new
  def new
    @first_word = FirstWord.new
  end

  # GET /first_words/1/edit
  def edit
  end

  # POST /first_words or /first_words.json
  def create
    @first_word = FirstWord.new(first_word_params)

    respond_to do |format|
      if @first_word.save
        format.html { redirect_to first_words_url, notice: "First word was successfully created." }
        format.json { render :show, status: :created, location: @first_word }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @first_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /first_words/1 or /first_words/1.json
  def update
    respond_to do |format|
      if @first_word.update(first_word_params)
        format.html { redirect_to first_word_url(@first_word), notice: "First word was successfully updated." }
        format.json { render :show, status: :ok, location: @first_word }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @first_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /first_words/1 or /first_words/1.json
  def destroy
    @first_word.destroy!

    respond_to do |format|
      format.html { redirect_to first_words_url, notice: "First word was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_first_word
      @first_word = FirstWord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def first_word_params
      params.require(:first_word).permit(:word, :language, :firstCharacter)
    end
end

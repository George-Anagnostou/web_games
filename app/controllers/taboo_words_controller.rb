class TabooWordsController < ApplicationController
  before_action :set_taboo_word, only: %i[ show edit update destroy ]

  # GET /taboo_words or /taboo_words.json
  def index
    @taboo_words = TabooWord.all
  end

  # GET /taboo_words/1 or /taboo_words/1.json
  def show
  end

  # GET /taboo_words/new
  def new
    @taboo_word = TabooWord.new
  end

  # GET /taboo_words/1/edit
  def edit
  end

  # POST /taboo_words or /taboo_words.json
  def create
    @taboo_word = TabooWord.new(taboo_word_params)

    respond_to do |format|
      if @taboo_word.save
        format.html { redirect_to taboo_word_url(@taboo_word), notice: "Taboo word was successfully created." }
        format.json { render :show, status: :created, location: @taboo_word }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @taboo_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taboo_words/1 or /taboo_words/1.json
  def update
    respond_to do |format|
      if @taboo_word.update(taboo_word_params)
        format.html { redirect_to taboo_word_url(@taboo_word), notice: "Taboo word was successfully updated." }
        format.json { render :show, status: :ok, location: @taboo_word }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @taboo_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taboo_words/1 or /taboo_words/1.json
  def destroy
    @taboo_word.destroy

    respond_to do |format|
      format.html { redirect_to taboo_words_url, notice: "Taboo word was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taboo_word
      @taboo_word = TabooWord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def taboo_word_params
      params.require(:taboo_word).permit(:main_word, :secondary_word1, :secondary_word2, :secondary_word3, :secondary_word4, :secondary_word5)
    end
end

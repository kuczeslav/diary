class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params["id"])
  end

  def new
    @entry = Entry.new
  end

  def create
    entry_params = params["entry"].permit("title", "contents")
    entry = Entry.new(entry_params)
    entry.date = Date.today
    entry.save
    redirect_to(entry_path(entry))
  end

  def edit
    @entry = Entry.find(params["id"])
  end

  def update
    entry_params = params["entry"].permit("title", "date", "contents")
    entry = Entry.find(params["id"])
    entry.update(entry_params)
    redirect_to(entry_path(entry))
  end

  def destroy
    entry = Entry.find(params["id"])
    entry.destroy
    redirect_to(entry)
  end
end

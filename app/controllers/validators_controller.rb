# -*- coding: utf-8 -*-

class ValidatorsController < ApplicationController
  respond_to :html
  before_filter :reset_session_values, only: %w(validate)

  # POST /validators
  def create
    @validator = Validator.new(params[:validator])
    if @validator.save
      flash[:notice] = "Validator successfully created"
      respond_with(@validator)
    else
      render :new
    end
  end

  # DELETE /validators/1
  def destroy
    @validator = Validator.find(params[:id])
    flash[:notice] = "Validator successfully destroyed." if @validator.destroy
    respond_with(@validator, location: validators_path)
  end

  # GET /validators/1/edit
  def edit
    respond_with(@validator = Validator.find(params[:id])) do |format|
      format.html { render action: :edit }
    end
  end

  # GET /validators
  def index
    respond_with(@validators = Validator.all)
  end

  # GET /validators/new
  def new
    respond_with(@validator = Validator.new)
  end

  # GET /validators/1
  def show
    respond_with(@validator = Validator.find(params[:id]))
  end

  # PUT /validators/1
  def update
    @validator = Validator.find(params[:id])
    if @validator.update_attributes(params[:validator])
      flash[:notice] = "Validator successfully updated."
      respond_with(@validator)
    else
      render :edit
    end
  end

  # GET /validate
  def validate
    @href = params[:href]
    if params[:v]
      session[:validator_ids] = params[:v].collect { |id| id.to_i }
    end
    if params[:auto]
      session[:auto] = true
    else
      session[:auto] = false
    end
  end
end

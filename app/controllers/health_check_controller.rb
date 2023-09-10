class HealthCheckController < ApplicationController
  def index
    render json: { message: 'API is healthy' }, status: :ok
  end
end

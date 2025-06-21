class ApiController < ApplicationController
  def all_comments
    res = {
      timestamp: Time.current.iso8601,
      data: Comment.all
    }
    render json: res, status: :ok
  end
end

# frozen_string_literal: true

class PingController < ApplicationController
  def index
    render plain: "pong", status: :ok
  end
end

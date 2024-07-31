# ====================
# Action registration
# ====================

require "kemal"

require "../../src/gui/macros"
require "../../src/gui/settings"
require "../../src/gui/run"

require "./main"
require "./state"

state = STATE

spawn do #
  Kemal.config.port = (ENV["PORT"]? || PORT).to_i
  Kemal.config.host_binding = ENV["HOST_BINDING"]? || "#{IP}"
  # Kemal.config.env = "production"
  Kemal.config.env = "development"

  get "/#{ROOT}" do
    app = App.new.to_html
  end

  # Registering actions via the utily macro `register`
  register(env, state, increment)
  register(env, state, decrement)

  # Run server
  Kemal.run
end # spawn

# Run app
run_app("Example 1 demo", 800, 600)

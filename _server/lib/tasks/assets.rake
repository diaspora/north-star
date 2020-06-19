# frozen_string_literal: true

namespace :assets do
  desc "Verifies that Node.js is installed"
  task :check_node do
    node_version = `node -v || nodejs -v`.strip
    if node_version.blank?
      warn "Node.js not installed."
      warn "Exiting!"
      exit!
    end
  end

  desc "Verifies that npm is installed"
  task :check_npm do
    npm_version = `npm -v`.strip
    if npm_version.blank?
      warn "npm not installed."
      warn "Exiting!"
      exit!
    end
  end

  desc "Verifies the setup"
  task check_setup: %i[check_node check_npm]

  desc "Installes Node.js packages"
  task prepare: %i[check_setup] do
    sh "npm install --loglevel error"
  end

  desc "Precompiles assets for production"
  task precompile: %i[prepare] do
    sh "npm run build"
  end
end

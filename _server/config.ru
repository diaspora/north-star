# frozen_string_literal: true

require_relative "./environment"
require_relative "./server"

use HttpAcceptLanguage::Middleware

run Server

weinre = require "weinre"

class Weinre

  DEFAULTS =
    httpPort: 31173
    boundHost: "-all-"
    verbose: true
    debug: true
    readTimeout: 5
    deathTimeout: (3 * 5)

  constructor: (@options = {}) ->
    for key of DEFAULTS
      @options[key] = DEFAULTS[key] unless @options[key]

  run: ->
    weinre.run @options


module.exports = Weinre

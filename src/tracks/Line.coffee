circosJS.Line = (conf, data, rules) ->
    # conf override the default configuration. Conf not in default conf
    # object are removed
    @_conf = circosJS.mixConf conf, JSON.parse(JSON.stringify(@_defaultConf))

    circosJS.Track.call(@, conf, data, rules)
    return @
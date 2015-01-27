circosJS.Core.prototype.heatmap = (id, conf, data) ->
    track = new circosJS.Heatmap(conf, data)

    if track.isLayoutCompliant @, id
        @_heatmaps[id] = track

    return @

circosJS.Core.prototype.histogram = (id, conf, data) ->
    track = new circosJS.Histogram(conf, data)

    if track.isLayoutCompliant @, id
        @_histograms[id] = track

    return @

circosJS.Core.prototype.chord = (id, conf, data) ->
    track = new circosJS.Chord(conf, data, @_layout)

    if track.isLayoutCompliant @, id
        @_chords[id] = track

    return @

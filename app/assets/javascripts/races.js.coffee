$ ->
  $(".mark_button").click ->
    remember_id = $(this).attr("id")
    info = $(this).attr("id").split(/(^mark_race_|_run_|_timestamp_?)/)
    race_id = info[2]; run_id = info[4]; timestamp = info[6]
    $.ajax {
      type: "POST",
      url: "/races/#{race_id}/mark",
      data: { run_id: run_id, timestamp: timestamp, mark: new Date().toJSON() },
      success: (data) ->
        $("##{remember_id}").empty()
        location.reload(true)
      error: (data) ->
        # alert JSON.stringify(data)
    } 

$("#blog_preview").click ->
  $(".blog_preview").html(marked($("#blog_content").val()))
  $(".blog_preview").show()
  $("#blog_content").hide()
  $(this).parents("dd").attr("class", "active")
  $("#blog_edit").parents("dd").attr("class", "")

$("#blog_edit").click ->
  $(".blog_preview").hide()
  $("#blog_content").show()
  $(this).parents("dd").attr("class", "active")
  $("#blog_preview").parents("dd").attr("class", "")
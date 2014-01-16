$("#blog_template_preview").click ->
  $(".template_preview").html(marked($("#blog_template_content").val()))
  $(".template_preview").show()
  $("#blog_template_content").hide()
  $(this).parents("dd").attr("class", "active")
  $("#blog_template_edit").parents("dd").attr("class", "")

$("#blog_template_edit").click ->
  $(".template_preview").hide()
  $("#blog_template_content").show()
  $(this).parents("dd").attr("class", "active")
  $("#blog_template_preview").parents("dd").attr("class", "")
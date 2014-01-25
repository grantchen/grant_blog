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

$("#blog_blog_template_id").click ->
  init_blog_template()

init_blog_template = ->
  if $('#blog_blog_template_id').length
    do ->
      $.ajax
        url:"/admin/blog_templates/get_content"
        data: "id="+$("#blog_blog_template_id").val()
      .done (data) ->
          $('#blog_content').val(data)

init_blog_template()


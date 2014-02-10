if $('.blog_content_preview').length
  do ->
    blogContent = $('.blog_content_preview').html()
    $('.blog_content_preview').html(marked(blogContent))
    $('.blog_content_preview').show()
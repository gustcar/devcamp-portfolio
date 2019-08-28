<<<<<<< HEAD
###
App.blogs = App.cable.subscriptions.create "BlogsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
###
jQuery(document).on 'turbolinks:load', ->
  comments = $('#comments')
  if comments.length > 0
    console.log(comments.length)
    App.global_chat = App.cable.subscriptions.create {
      channel: "BlogsChannel"
=======
jQuery(document).on 'turbolinks:load', ->
  comments = $('#comments')
  if comments.length > 0
    App.global_chat = App.cable.subscription.create {
      channel: 'BlogsChannel'
>>>>>>> 66a67007c622609fb8cdd25e9d447d2e34ac405c
      blog_id: comments.data('blog-id')
    },
    connected: ->
    disconnected: ->
    received: (data) ->
<<<<<<< HEAD
      comments.append(data['comment'])
    send_comment: (comment, blog_id) ->
      console.log(comment)
      console.log(blog_id)
=======
      comments.append data['comment']
    send_comment: (comment, blog_id) ->
>>>>>>> 66a67007c622609fb8cdd25e9d447d2e34ac405c
      @perform 'send_comment', comment: comment, blog_id: blog_id
  $('#new_comment').submit (e) ->
    $this = $(this)
    textarea = $this.find('#comment_content')
    if $.trim(textarea.val()).length > 1
<<<<<<< HEAD
      App.global_chat.send_comment(textarea.val(), comments.data('blog-id'))
      textarea.val('')
=======
      App.global_chat.send_comment textarea.val(),
        comments.data('blog-id')
        textarea.val('')
>>>>>>> 66a67007c622609fb8cdd25e9d447d2e34ac405c
    e.preventDefault()
    return false
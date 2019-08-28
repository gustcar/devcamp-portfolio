class CommentBroadcastJob < ApplicationJob
  queue_as :default

  def perform(comment)
    ActionCable.server.broadcast "blogs_#{comment.blog.id}_channel", comment: render_comment(comment)
  end

  private
<<<<<<< HEAD

  def render_comment(comment)
    CommentsController.render partial: 'comments/comment', locals: { comment: comment }
=======
  def render_comment(comment)
    CommentsController.render partial: "comments/comment", locals: { comment: comment }
>>>>>>> 66a67007c622609fb8cdd25e9d447d2e34ac405c
  end
end
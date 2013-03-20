# -*- encoding : utf-8 -*-

class CommentsController < ApplicationController
  def create
    post = Post.find params[:post_id]
    comment = post.comments.new content: params[:content]

    if comment.save
      redirect_to :back, 
        notice: "Comentário criado com sucesso"
    else
      redirect_to :back,
        warning: "Erro ao criar comentário"
    end
  end
end
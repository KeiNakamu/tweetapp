module PostsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm' || action_name == 'create'
      confirm_posts_path
    elsif action_name == 'edit'
      confirm_post_path
    end
  end

  def confirm_new_or_edit
    unless @post.id?
      posts_path
    else
      post_path
    end
  end

  def confirm_form_method
    @post.id ? 'patch' : 'post'
  end
end

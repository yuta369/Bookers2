module UsersHelper
  def user_profile_image(user, size: "100x100")
    if user.profile_image.attached?
      image_tag(user.display_image, loading: "lazy", size: size)
    else
      image_tag('default-image.jpg', size: size)
    end
  end

  def edit_user_button(user)
    link_to edit_user_path(user), role: "button", class: "btn btn-outline-secondary btn-block" do
      content_tag(:i, "", class: "fa-solid fa-user-gear")
    end
  end
end
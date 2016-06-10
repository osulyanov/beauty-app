ActiveAdmin.register User do
  permit_params :name, :surname, :username, :role, :sex, :bio, :phone_number,
                :dob_on, :profile_picture, :active, :archived, :latitude,
                :longitude, :rating, :facebook_id, :password,
                :password_confirmation

  index do
    selectable_column
    id_column
    column :full_name
    column :email
    column :role
    actions
  end

  filter :name
  filter :surname
  filter :username
  filter :email
  filter :phone_number
  filter :active
  filter :archived

  form do |f|
    f.inputs 'User Details' do
      f.input :email
      f.input :name
      f.input :surname
      f.input :username
      f.input :role, as: :select, collection: User.roles.keys
      f.input :sex, as: :select, collection: User.sexes.keys
      f.input :bio
      f.input :phone_number
      f.input :dob_on
      f.input :profile_picture, as: :file
      f.input :active
      f.input :archived
      f.input :latitude
      f.input :longitude
      f.input :rating
      f.input :facebook_id
      if f.object.new_record?
        f.input :password
        f.input :password_confirmation
      end
    end
    f.actions
  end
end

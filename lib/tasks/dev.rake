namespace :dev do
  desc "Create main admin"
  task add_default_admin: :environment do
    Admin.create!(
      email: 'admin@admin.com',
      password: 123456,
      password_confirmation: 123456
    )
  end

  desc "Add extra admin"
  task add_extra_admin: :environment do
    10.times do |i|
      Admin.create!(
        email: Faker::Internet.email,
        password: 123456,
        password_confirmation: 123456
      )
    end
  end

  desc "Create main user"
  task add_default_user: :environment do
    User.create!(
      email: 'user@user.com',
      password: 123456,
      password_confirmation: 123456
    )
  end
end

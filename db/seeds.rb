# Generated with RailsBricks
# Initial seed file to use with Devise User Model

# Temporary admin account
u = User.new(
    username: "admin",
    password: "1234",
    password_confirmation: "1234",
    admin: true
)
u.save!




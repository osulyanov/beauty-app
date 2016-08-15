Geoconfess
==========

# Users' credentials

Admin: admin@example.com / 1q2w3e4r

User: user@example.com / 1q2w3e4r

Beautician: beautician@example.com / 1q2w3e4r

# Deploy (only for test environments)

## Ruby installation

Ruby installation on **Ubuntu based** distibutions much more painless than under ReadHat based

It's better to use rbenv, in case of any issues see [rbenv/rbenv](https://github.com/rbenv/rbenv).

Then install Ruby 2.2.4

    rbenv install 2.2.4

Disable gem documentation auto installing

    echo 'gem: --no-document' >> ~/.gemrc

## Project installation

### Get code and modules

    git clone git@github.com:cracadumi/beauty-app.git
    cd beauty-app
    bundle install

If ``bundle install`` fails you probably need to install additional system dependancies manually (it depends on you default installed system packages like Node.js, kernel headers, libxml, etc.). After installing it run ``bundle install`` again until you will get message ``Your bundle is complete!``

### Prepare DB

    bundle exec rake db:migrate
    bundle exec rake db:seed

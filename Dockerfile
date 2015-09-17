# See https://github.com/phusion/passenger-docker for base image information
FROM phusion/passenger-ruby22:0.9.17

# Paperclip (image attachment manager) requires imagemagick.
RUN apt-get -y install imagemagick

ENV HOME /root

# Use baseimage-docker's init process
CMD ["/sbin/my_init"]

# Expose Nginx http
EXPOSE 80 443

# Remove Nginx default site, add our app conf
RUN rm /etc/nginx/sites-enabled/default

# Add nginx site config
ADD ./docker/docadmin.conf /etc/nginx/sites-enabled/docadmin.conf

# Add SSL certs
ADD ./docker/docadmin.crt /etc/nginx/ssl/docadmin.crt
ADD ./docker/docadmin.key /etc/nginx/ssl/docadmin.key

# Install gems
WORKDIR /tmp
ADD Gemfile /tmp/
RUN bundle install

# Add rails app
ADD . /home/app/docadmin
RUN chown -R app:app /home/app/docadmin

# Enable Nginx and Passenger
RUN rm -f /etc/service/nginx/down

# Clean up apt
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

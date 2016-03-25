FROM ruby:2.3.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
ENV RAILS_DIR=/var/www/blog
RUN mkdir -p $RAILS_DIR
WORKDIR $RAILS_DIR
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install
ADD . .


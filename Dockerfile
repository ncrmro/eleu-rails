FROM ruby:3.1.3
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
CMD bundle exec rails s -p 3000 -b '0.0.0.0'

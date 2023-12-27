FROM ruby:2.7.4-alpine
RUN mkdir -p /app
WORKDIR /app
COPY Gemfile /app/
RUN bundle install --quiet
COPY src/app.rb /app
COPY src/config.ru /app
EXPOSE 5000
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "5000"]
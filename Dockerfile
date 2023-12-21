FROM ruby:2.7.4-alpine
WORKDIR /app
COPY /src/runner.rb ./
CMD ["ruby", "./runner.rb"]
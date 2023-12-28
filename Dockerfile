FROM ruby:2.7.4-alpine
RUN mkdir -p /app
WORKDIR /app
COPY Gemfile /app/
RUN bundle install --quiet
COPY src/app.rb /app
COPY src/config.ru /app
EXPOSE 5000
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "5000"]

# Я хочу пускать команды в контейнер на выполнение скрипта
# Закомментировать последние четыре строки и раскомментировать следующую
# COPY src/runner.rb /app
# После этого собрать контейнер     docker build -t runner .
# Запустить контейнер               docker run -it -d --name runner runner
# запустить скрипт в контейнере     docker exec runner ruby runner.rb 13, 2

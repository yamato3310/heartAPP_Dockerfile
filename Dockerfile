FROM ruby
RUN git clone --depth 1 https://github.com/yamato3310/heartApp.git
WORKDIR heartApp
RUN gem install bundler \
  && bundle install --clean --path /bundle
CMD ["bundle", "exec", "rails", "s"]
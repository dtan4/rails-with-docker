FROM dtan4/rails-base

RUN mkdir /app
WORKDIR /app

ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install
ADD . /app

ENV RAILS_ENV production
RUN bundle exec rake db:create
RUN bundle exec rake db:migrate
RUN bundle exec rake assets:precompile

EXPOSE 4567
CMD script/start-server.sh

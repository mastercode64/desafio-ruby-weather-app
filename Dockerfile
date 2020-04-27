FROM ruby:2.5.0
ENV APP_HOME /app
RUN mkdir $APP_HOME
COPY . $APP_HOME

WORKDIR $APP_HOME

ADD Gemfile $APP_HOME/Gemfile
ADD Gemfile.lock $APP_HOME/Gemfile.lock

RUN gem install bundler
RUN cd $APP_HOME
RUN bundle install
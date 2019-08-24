FROM ruby:2.5.1

RUN apt-get update && apt-get install -y node.js build-essential


RUN mkdir /myapp
WORKDIR /myapp

COPY Gemfile* ./

RUN gem install bundler -v 2.0.1
RUN gem update bundle
RUN bundle --version


COPY . .

CMD ["rails" ,"server", "-b" ,"0.0.0.0"]





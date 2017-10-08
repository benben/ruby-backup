FROM ruby:2.3-alpine

RUN apk update
RUN apk add build-base
RUN gem install backup
RUN backup generate:config --config-file /root/Backup/config.rb
RUN apk del build-base

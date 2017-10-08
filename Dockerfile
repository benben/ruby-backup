FROM ruby:2.3-slim

RUN apt-get update
RUN apt-get -y install mysql-client curl build-essential libxml2-dev libxslt-dev zlib1g-dev
RUN gem install backup
RUN apt-get autoremove -y --purge build-essential libxml2-dev libxslt-dev zlib1g-dev
RUN apt-get clean
RUN backup generate:config --config-file /root/Backup/config.rb

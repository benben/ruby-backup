FROM ruby:2.3-slim

RUN apt-get update
RUN apt-get install -y build-essential mariadb-client
RUN gem install backup
RUN backup generate:config --config-file /root/Backup/config.rb
RUN apt-get clean

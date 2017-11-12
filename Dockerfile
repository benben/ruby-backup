FROM ruby:2.3-slim

RUN apt-get update
RUN apt-get install -y wget
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main" >> /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update
RUN apt-get install -y build-essential mariadb-client postgresql-client-10 curl
RUN gem install backup
RUN backup generate:config --config-file /root/Backup/config.rb
RUN apt-get clean

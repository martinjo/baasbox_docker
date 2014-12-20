FROM dockerfile/java
MAINTAINER Giovanni Laquidara <glaquidara@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y                             && \
    apt-get install software-properties-common -y && \
    apt-get install -y wget                       && \
    apt-get install -y unzip
RUN wget https://dl.dropboxusercontent.com/u/24442350/baasbox-0.9.0.zip
RUN unzip -o baasbox-0.9.0.zip
RUN chmod 755 baasbox-0.9.0/start


EXPOSE 9000
CMD baasbox-0.9.0/start

FROM httpd
#RUN systemctl start httpd
#ENTRYPOINT [ "sh", "systemctl start httpd"]
RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install unzip -y \
  && rm -rf /var/lib/apt/lists/*
RUN cd /tmp
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page268/drinker.zip
RUN unzip drinker.zip && rm -f drinker.zip
RUN cd drinker
COPY * /usr/local/apache2/htdocs/
#CMD ["sh", "systemctl start httpd"]
#ENTRYPOINT ["tail"]
#CMD ["-f","/dev/null"]
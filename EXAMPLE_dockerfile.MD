FROM httpd (write the name of )
RUN yum install update -y && yum install upgrade -y && yum install wget (install all the dependancys)
RUN wget (install required url) 
RUN unzip (unzip file which is installed)
RUN CD GO INSIDE OF THAT file
COPY * /PATH WHERE YOU WANT TO COPY
ENTRYPOINT [ "sh" "systemctl start httpd" ]

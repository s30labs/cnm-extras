# SQL Server Command Line Tools
# docker build -t core/freetds .
FROM centos:7

LABEL maintainer="CentOS based freetds"

RUN yum install -y epel-release && yum install -y freetds freetds-devel && yum clean all

# Install latest mssql-server package
#RUN curl -o /etc/yum.repos.d/mssql-server.repo https://packages.microsoft.com/config/rhel/7/mssql-server-2017.repo && \
#    curl -o /etc/yum.repos.d/msprod.repo https://packages.microsoft.com/config/rhel/7/prod.repo && \
#    ACCEPT_EULA=Y yum install -y mssql-tools unixODBC-devel && \
#    yum clean all
#
#COPY uid_entrypoint /opt/mssql-tools/bin/
#ENV PATH=${PATH}:/opt/mssql/bin:/opt/mssql-tools/bin


# apt-get and system utilities
#RUN apt-get update && apt-get install -y \
#	curl apt-transport-https debconf-utils \
#    && rm -rf /var/lib/apt/lists/*

# adding custom MS repository
#RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
#RUN curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql-release.list

# install SQL Server drivers and tools
#RUN apt-get update && ACCEPT_EULA=Y apt-get install -y msodbcsql mssql-tools
#RUN echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
#RUN /bin/bash -c "source ~/.bashrc"



#RUN apt-get -y install locales
#RUN locale-gen en_US.UTF-8
#RUN update-locale LANG=en_US.UTF-8



CMD /bin/bash 




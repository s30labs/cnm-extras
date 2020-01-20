#SAP Hana Client (hdbclient)
# docker build -t saphana .
# docker run --rm -v /persistent/saphana/sql:/mnt/sql saphana bash -c "/usr/sap/hdbclient/hdbsql -U SVCAVANTIMONITOR -I /mnt/sql/command.sql"
FROM centos:7
MAINTAINER Fernando Marin <fmarin@30labs.com>
#ENV SKINS_PATH "${OTRS_ROOT}/var/httpd/htdocs/skins/"
COPY ./SAP_HANA_CLIENT.tar /tmp
RUN yum install -y libaio.x86_64 && \
	 mkdir /mnt/sql && \
	 tar -xvf /tmp/SAP_HANA_CLIENT.tar -C /opt && \
	 /opt/SAP_HANA_CLIENT/hdbinst --path=/usr/sap/hdbclient && \
	 rm -f /tmp/SAP_HANA_CLIENT.tar && rm -rf /opt/SAP_HANA_CLIENT* && \
	 yum clean all && rm -rf /var/cache/yum

#/usr/sap/hdbclient/hdbsql
CMD ["/bin/bash"]

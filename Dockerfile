FROM demoregistry.dataman-inc.com/library/alpine3.4-base:latest

MAINTAINER jyliu <jyliu@dataman-inc.com>

COPY print.sh /

RUN chmod +x /*.sh

CMD ["/print.sh"]

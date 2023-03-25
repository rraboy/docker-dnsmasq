FROM ubuntu:jammy

RUN apt update -y; \
    apt upgrade -y; \
    apt install -y dnsmasq; \
    apt autoremove -y; \
    apt autoclean -y

EXPOSE 53/udp
EXPOSE 53/tcp

CMD ["/usr/sbin/dnsmasq", "--no-daemon"]

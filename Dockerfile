FROM busybox
ENV version 1.2.1

ADD https://github.com/shadowsocks/shadowsocks-go/releases/download/${version}/shadowsocks-server.tar.gz /bin/

EXPOSE 5555

# Configure container to run as an executable
ENTRYPOINT ["/bin/shadowsocks-server", "-p", "5555", "-k" , "${SS_PASSWORD}", "-u"]

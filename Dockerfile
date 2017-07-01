FROM busybox

ADD https://github.com/shadowsocks/shadowsocks-go/releases/download/1.2.1/shadowsocks-server.tar.gz /tmp/shadowsocks-server.tar.gz
RUN tar -xvzf /tmp/shadowsocks-server.tar.gz -C /bin/

EXPOSE 5555
EXPOSE 5555/udp

ADD entrypoint.sh /bin/entrypoint.sh

# Configure container to run as an executable
ENTRYPOINT ["/bin/entrypoint.sh"]

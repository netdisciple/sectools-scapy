FROM alpine:3.7

LABEL maintainer="asn1parse@gmail.com"

RUN apk update && apk add bash iputils py-crypto tcpdump sox graphviz graphviz ebtables scapy && rm -rf /var/cache/apk/*
#RUN mkdir /nmap_output
#ENTRYPOINT ["nmap","-oN","/nmap_output/out.txt","-sS","-Pn","-T5","-A","-vvv","127.0.0.1"]
ENTRYPOINT ["scapy"]
CMD ["--help"]

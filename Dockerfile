FROM	openjdk:8

LABEL	maintainer="Stefano Ghignone, IPSP-CNR, Turin, Italy, stefano.ghignone[at]ipsp.cnr.it"
LABEL	name="PILON"
LABEL	version="1.23 (released 2018-11-27)" 

RUN	apt update && apt -y upgrade \
	&& apt install -y wget

RUN	LC_ALL="C.UTF-8"
RUN	LANG="C.UTF-8"

	#INSTALL PILON
ENV	TAG="1.23"
ENV	URL="https://github.com/broadinstitute/pilon/releases/download/v${TAG}/pilon-${TAG}.jar"
RUN	wget -c "$URL" -P /opt/	




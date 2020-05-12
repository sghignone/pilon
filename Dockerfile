FROM	openjdk:8

LABEL	maintainer="Stefano Ghignone, IPSP-CNR, Turin, Italy, stefano.ghignone[at]ipsp.cnr.it"
LABEL	name="PILON"
LABEL	version="1.23 (released 2018-11-27)" 

ENV	PATH=/usr/local/bin:$PATH

RUN	apt update && apt -y upgrade \
	&& apt install -y wget

RUN	LC_ALL="C.UTF-8"
RUN	LANG="C.UTF-8"

	#INSTALL PILON
ENV	TAG="1.23"
ENV	URL="https://github.com/broadinstitute/pilon/releases/download/v${TAG}/pilon-${TAG}.jar"
RUN	wget -c "$URL" -P /opt/	

#RUN	echo '#!/bin/bash\njava -Xmx16G -jar /opt/pilon-${TAG}.jar' > /usr/local/bin/pilon && \
#    	chmod +x /usr/local/bin/pilon


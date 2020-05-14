FROM	continuumio/miniconda3

LABEL	maintainer="Stefano Ghignone, IPSP-CNR, Turin, Italy, stefano.ghignone[at]ipsp.cnr.it"
LABEL	name="PILON"
LABEL	description="Automatically improve draft assemblies and find variation among strains"
LABEL	version="1.23 (released 2018-11-27)" 

RUN	apt update && apt install -y procps && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN	conda update -n base -c defaults conda
RUN	conda config --add channels conda-forge && \
	conda config --add channels bioconda && \
	conda config --add channels default

RUN	conda install pilon=1.23 samtools=1.9 bwa=0.7.17 && conda clean -a
RUN	sed -i "16s/Xms512m/Xms1g/" /opt/conda/share/pilon-1.23-2/pilon && sed -i "16s/Xmx1g/Xmx100g/" /opt/conda/share/pilon-1.23-2/pilon

WORKDIR	/scratch

FROM debian:latest

COPY runaction.sh /runaction.sh
RUN chmod +x /runaction.sh
RUN apt update
RUN pip install setuptools
RUN apt install -y python3-proselint 

ENTRYPOINT ["/runaction.sh"]

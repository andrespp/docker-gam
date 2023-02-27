FROM python:3.11

RUN curl -s -S -L https://gam-shortn.appspot.com/gam-install > install_gam.sh && \
    bash install_gam.sh -l

COPY ./data/creds/ /root/bin/gam/

CMD bash

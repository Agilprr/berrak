FROM greycilik/cilikuserbot:buster

RUN git clone -b berrak https://github.com/Agilprr/berrak /home/berrak/ \
    && chmod 777 /home/berrak \
    && mkdir /home/berrak/bin/

COPY ./sample_config.env ./config.env* /home/cilikuserbot/

WORKDIR /home/berrak/

CMD ["python3", "-m", "userbot"]

# Use an official Python runtime as a parent image
FROM python:3.12
WORKDIR /usr/src/app
RUN wget https://github.com/TA-Lib/ta-lib/releases/download/v0.4.0/ta-lib-0.4.0-src.tar.gz
RUN tar -xvf ta-lib-0.4.0-src.tar.gz
WORKDIR /usr/src/app/ta-lib
RUN ls -la
RUN ./configure --prefix=/usr --build='/bin/arch'-unknown-linux-gnu
RUN make
RUN make install
WORKDIR /usr/src/app
RUN pip install --no-cache-dir TA-Lib
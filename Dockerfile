FROM mayanedms/mayanedms:latest

USER root

RUN apt-get update && \
    apt-get install -y locales tesseract-ocr-fra && \
    locale-gen fr_FR.UTF-8 && \
    update-locale LANG=fr_FR.UTF-8

ENV LANG=fr_FR.UTF-8
ENV LANGUAGE=fr_FR:fr
ENV LC_ALL=fr_FR.UTF-8

USER mayan

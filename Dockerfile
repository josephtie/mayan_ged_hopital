FROM mayanedms/mayanedms:latest

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    locales \
    tesseract-ocr \
    tesseract-ocr-fra \
    fonts-dejavu \
    && locale-gen fr_FR.UTF-8 \
    && update-locale LANG=fr_FR.UTF-8 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV LANG=fr_FR.UTF-8
ENV LANGUAGE=fr_FR:fr
ENV LC_ALL=fr_FR.UTF-8

USER mayan

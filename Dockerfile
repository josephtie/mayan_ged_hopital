FROM mayanedms/mayanedms:latest

USER root

RUN apt-get update && \
    apt-get install -y \
        locales \
        tesseract-ocr-fra \
        libreoffice \
        libreoffice-writer \
        libreoffice-calc \
        libreoffice-impress \
    && locale-gen fr_FR.UTF-8 \
    && update-locale LANG=fr_FR.UTF-8 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Configuration langue française
ENV LANG=fr_FR.UTF-8
ENV LANGUAGE=fr_FR:fr
ENV LC_ALL=fr_FR.UTF-8

USER mayan
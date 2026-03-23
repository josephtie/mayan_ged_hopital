FROM mayanedms/mayanedms:latest

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    locales \
    tesseract-ocr \
    tesseract-ocr-fra \
    libreoffice-core \
    libreoffice-writer \
    libreoffice-calc \
    libreoffice-impress \
    fonts-dejavu \
    && locale-gen fr_FR.UTF-8 \
    && update-locale LANG=fr_FR.UTF-8 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 🔥 IMPORTANT : fallback si langue non dispo
RUN mkdir -p /usr/share/tesseract-ocr/4.00/tessdata && \
    ln -s /usr/share/tesseract-ocr/4.00/tessdata /usr/share/tessdata || true

ENV LANG=fr_FR.UTF-8
ENV LANGUAGE=fr_FR:fr
ENV LC_ALL=fr_FR.UTF-8

USER mayan

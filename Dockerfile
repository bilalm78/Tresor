Dockerfile

FROM pandoc/core:latest

WORKDIR Tresor/indices/

COPY . Tresor/indices/

RUN apt-get update -y && apt-get install -y pandoc texlive-xetex texlive-fonts-recommended texlive-generic-recommended

CMD ["sh", "-c", "pandoc -s -o output.pdf *.md"]

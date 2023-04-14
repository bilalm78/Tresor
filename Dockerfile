Dockerfile

FROM pandoc/core:latest

WORKDIR ~/tresor_shell/Tresor/indices/

COPY . ~/tresor_shell/Tresor/indices/

RUN apt-get update && apt-get install -y pandoc

CMD ["sh", "-c", "pandoc -s -o indices.pdf *.md"]




FROM debian

WORKDIR ~/tresor_shell/Tresor/indices

COPY . ~/tresor_shell/Tresor/indices

RUN apt-get update && apt-get upgrade

RUN apt-get install -y pandoc

CMD ["sh", "-c", "pandoc -f markdown -t pdf indices.md -o indices.pdf"]

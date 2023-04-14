Dockerfile

FROM pandoc/core:latest

WORKDIR ~/tresor_shell/Tresor/indices/

COPY . ~/tresor_shell/Tresor/indices/

RUN apt-get update && apt-get install -y pandoc

CMD ["sh", "-c", "pandoc -s -o indices.pdf *.md"]

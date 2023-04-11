Dockerfile

FROM pandoc/core:latest

WORKDIR Tresor/indices/

COPY . Tresor/indices/

CMD ["sh", "-c", "pandoc -s -o output.pdf *.md"]

Dockerfile

FROM pandoc/core:latest

WORKDIR Tresor/indices/

COPY . .

CMD ["sh", "-c", "pandoc -s -o output.pdf *.md"]

Dockerfile

FROM pandoc/core:latest

WORKDIR /Tresor/indices/

COPY . /Tresor/indices/

RUN apt-get update && apt-get install -y pandoc

CMD ["sh", "-c", "pandoc -s -o output.pdf *.md"]

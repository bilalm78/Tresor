Dockerfile

FROM pandoc/core:latest

WORKDIR /app

COPY . .

CMD ["sh", "-c", "pandoc -s -o output.pdf *.md"]

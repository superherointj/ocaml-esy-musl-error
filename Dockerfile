FROM superherointj/archlinux-esy AS app-builder

RUN pacman -S --noconfirm musl

COPY * ./
RUN esy

###

FROM alpine as app-runner

RUN mkdir /workdir
WORKDIR /workdir
COPY --from=app-builder /workdir/_esy/default/build/default/app/esy-musl.exe /workdir/esy-musl

RUN /bin/sh /workdir/esy-musl

# "superherointj/ocaml#7d0b32b"
# -cc /usr/bin/musl-gcc -ccopt -static
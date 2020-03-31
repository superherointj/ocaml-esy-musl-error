FROM superherointj/archlinux-esy AS app-builder

RUN pacman -S --noconfirm musl

COPY * ./
RUN esy

###

FROM alpine as app-runner

RUN mkdir /workdir
WORKDIR /workdir
COPY --from=app-builder /workdir/_esy/default/build/default/app/esymusl.exe /workdir/esymusl

RUN /bin/sh /workdir/esymusl
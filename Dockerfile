FROM base/archlinux

RUN pacman -Syu
RUN pacman -S --noconfirm archiso

RUN mkdir -p /archlive
RUN cp -r /usr/share/archiso/configs/releng/* /archlive

COPY ./files/* /archlive/
COPY ./files/customize_airootfs.sh /archlive/airootfs/root/
RUN chmod +x /archlive/airootfs/root/customize_airootfs.sh

WORKDIR /archlive

RUN mkdir -p /archlive/out

CMD ./build.sh -v
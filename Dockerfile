ARG TL_VER=2018
FROM doratex/tlarchive:${TL_VER}frozen

# install gnuplot
RUN apt update && \
    apt install -y gnuplot-nox && \
    apt autoremove -y && \
    apt clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

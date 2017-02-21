# Linux dev environment for LEDE project

FROM jlcs/omega2-sdk

RUN make tools/install
RUN make toolchain/install

ENV PATH "$PATH:/lede/staging_dir/toolchain-mipsel_24kc_gcc-5.4.0_musl-1.1.15/bin:/lede/staging_dir/toolchain-mipsel_24kc_gcc-5.4.0_musl-1.1.15/bin"


# Use this command to run with shared directory:
# docker run -it -v /my_host_dir:/remote jlcs/omega2-sdk bash

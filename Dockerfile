FROM ubuntu:jammy
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/New_York

RUN apt update && apt install -y apt-utils software-properties-common build-essential git \
    net-tools tcpdump traceroute iputils-ping dnsutils psmisc curl wget nano git-core \
    python3 python3-pip python3-dev python3-venv libyaml-dev libffi-dev libssl-dev zsh \
    iproute2 sngrep unzip ripgrep


RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g npm


# Copy scripts/nvim_install.sh and run it
COPY scripts/nvim_install.sh /root/nvim_install.sh
RUN chmod +x /root/nvim_install.sh && /root/nvim_install.sh

# Clone nvim configfile
RUN git clone https://github.com/raushanraja/nvimdot ~/.config/nvim

CMD ["tail", "-f", "/dev/null"]


FROM gitpod/workspace-full-vnc

USER gitpod

# RUN sudo apt-get -q update && sudo apt-get install -yq libpython3.6 rust-lldb && sudo rm -rf /var/lib/apt/lists/*
RUN sudo apt-get update && \
    sudo apt-get install -y libx11-dev libxkbfile-dev libsecret-1-dev libgconf2–4 libnss3 && \
    sudo rm -rf /var/lib/apt/lists/*

ENV RUST_LLDB=/usr/bin/lldb-8
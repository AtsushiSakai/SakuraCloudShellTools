#!/bin/bash -euo pipefail
echo "Install Julia"
JULIA_VERSION=$(curl -s "https://api.github.com/repos/JuliaLang/julia/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
JULIA_MINOR_VERSION=$(echo $JULIA_VERSION | grep -Po "^[0-9]+.[0-9]+")
curl -o julia.tar.gz "https://julialang-s3.julialang.org/bin/linux/x64/${JULIA_MINOR_VERSION}/julia-${JULIA_VERSION}-linux-x86_64.tar.gz"
sudo mkdir /opt/julia
sudo tar xf julia.tar.gz --strip-components=1 -C /opt/julia
sudo ln -s /opt/julia/bin/* /usr/local/bin

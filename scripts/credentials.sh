#!/usr/bin/env bash

# Membuat folder ~/.pub-cache jika belum ada
if [[ ! -e ~/.pub-cache/credentials.json ]]; then
    mkdir -p ~/.pub-cache
    touch ~/.pub-cache/credentials.json
fi

# Menulis kredensial dari environment variable PUB_CREDENTIALS ke dalam file ~/.pub-cache/credentials.json
echo $PUB_CREDENTIALS > ~/.pub-cache/credentials.json

JFS_LATEST_TAG=1.0.2
wget "https://github.com/juicedata/juicefs/releases/download/v${JFS_LATEST_TAG}/juicefs-${JFS_LATEST_TAG}-linux-amd64.tar.gz"
tar -zxf "juicefs-${JFS_LATEST_TAG}-linux-amd64.tar.gz"
install juicefs /usr/bin
rm juicefs "juicefs-${JFS_LATEST_TAG}-linux-amd64.tar.gz"
rm -rf /var/cache/apk/*

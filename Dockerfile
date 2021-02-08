FROM sourcegraph/server:3.24.1

COPY gitconfig /etc/gitconfig
COPY gitconfig /etc/sourcegraph/gitconfig

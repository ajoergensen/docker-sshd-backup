FROM ajoergensen/openssh-server

RUN \
	apk upgrade --no-cache && \
	apk add --no-cache rsync && \
	tag=$(curl -sX GET "https://api.github.com/repos/borgbackup/borg/releases" | awk '/tag_name/{print $4;exit}' FS='[""]') && \
	wget https://github.com/borgbackup/borg/releases/download/${tag}/borg-linux64 -O /usr/bin/borg && \
	chmod -v +x /usr/bin/borg

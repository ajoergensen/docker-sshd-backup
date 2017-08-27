FROM ajoergensen/openssh-server

RUN \
	apk add --no-cache rsync borgbackup

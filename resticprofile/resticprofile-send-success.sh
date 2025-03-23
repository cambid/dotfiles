#!/usr/bin/env bash
[[ -z "${PROFILE_NAME}" ]] || /usr/bin/msmtp -a cyon.ch -f backup@faderweb.de backup@faderweb.de -t <<MAIL
To: $1
From: backup@faderweb.de
Subject: restic successful on $(hostname -f): ${PROFILE_COMMAND} "${PROFILE_NAME}"
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

----
DETAILS:

$(systemctl status --user --full "resticprofile-${PROFILE_COMMAND}@profile-${PROFILE_NAME}")

----
CONFIG:

$(resticprofile --name "${PROFILE_NAME}" show)

MAIL
exit 0

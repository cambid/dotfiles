#!/usr/bin/env bash
[[ -z "${PROFILE_NAME}" ]] || /usr/bin/msmtp -a cyon.ch -f backup@faderweb.de backup@faderweb.de -t <<ERRMAIL
To: $1
From: backup@faderweb.de
Subject: restic failed on $(hostname -f): ${PROFILE_COMMAND} "${PROFILE_NAME}"
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

${ERROR}

----
COMMANDLINE:

${ERROR_COMMANDLINE}

----
STDERR:

${ERROR_STDERR}

----
DETAILS:

$(systemctl status --user --full "resticprofile-${PROFILE_COMMAND}@profile-${PROFILE_NAME}")

----
CONFIG:

$(resticprofile --name "${PROFILE_NAME}" show)

ERRMAIL
exit 0

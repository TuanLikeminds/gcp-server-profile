#!/usr/bin/env sh
#
# Ping Identity DevOps - Docker Build Hooks
#
#- This is called after the start or restart sequence has finished and before
#- the server within the container starts
#

# shellcheck source=./pingcommon.lib.sh
. "${HOOKS_DIR}/pingcommon.lib.sh"

chmod -R g+rwx,o+rwx /opt/staging
chgrp -R root /opt/staging
chmod -R g+rwx,o+rwx /opt/staging
chgrp -R root /opt/staging
chmod -R u+rwx,g+rwx,o+rwx /opt/staging
chown -R 9031 /opt/staging



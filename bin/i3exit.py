#!/usr/bin/env python3

from subprocess import check_output
import os

from i3ipc import Connection


def on_shutdown(conn):
    uid = os.getuid()
    check_output(['pkill', '-u', str(uid), 'ssh-agent'])


if __name__ == '__main__':
    conn = Connection()
    conn.on('ipc_shutdown', on_shutdown)
    conn.main()

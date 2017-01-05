#!/bin/bash

umount -f ~/Remotes/eva

sshfs amir@eva.cmucreatelab.org:/ ~/Remotes/eva \
-oauto_cache,reconnect,defer_permissions,noappledouble,volname=eva
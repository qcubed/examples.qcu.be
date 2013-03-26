#!/bin/sh
./refreshFromGit &> /dev/null
./runCodegen &> /dev/null
./installPlugins &> /dev/null

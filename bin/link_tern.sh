#!/bin/bash
echo ---SYMLINKING TERN-CONFIG---
ln -s $PWD/tern-config ~/.tern-config &> /dev/null || echo .tern-config already exists

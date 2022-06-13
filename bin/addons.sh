#!/bin/bash

{
fin config set --env=local XDEBUG_ENABLED=1
fin addon install pma
fin project start
} > /dev/null 2>&1

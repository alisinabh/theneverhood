#!/bin/bash

echo ""
echo "Please choose Windows 95 and click on OK."
winecfg

echo "Please click install and complete in installation with the defaults"
wine SETUP.exe

echo "Now without closing this go to another terminal and run 02-commit.sh"

bash

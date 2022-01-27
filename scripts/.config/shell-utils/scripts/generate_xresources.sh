#!/usr/bin/env bash

CONFIG="${XRESOURCES}/configuration"
COLORSCHEMES="${XRESOURCES}/colorschemes"

echo "#include \"${CONFIG}/urxvt.conf\""
echo "#include \"${CONFIG}/xft.conf\""
echo "#include \"${CONFIG}/xterm.conf\""
echo "#include \"${CONFIG}/xft.conf\""
echo "#include \"${COLORSCHEMES}/yarra-valley.conf\""

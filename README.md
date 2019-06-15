# sway-gdm

Features:
* adds [sway.desktop](usr/share/wayland-sessions/sway.desktop) into `/usr/share/wayland-sessions`
* adds [sway-run](usr/bin/sway-run) into `/usr/bin`

NOTES:
* `sway-run` is run within bash login shell to ensure that profile configs are loaded, see https://github.com/swaywm/sway/issues/3109 for details
* any env vars that you expect to be present in sway session can be set in `sway-run` before launching sway, currently addressed issues
  * blank screen on apps using Java AWT, details https://github.com/swaywm/sway/issues/595

## Install

`sudo make install`

## Uninstall

`sudo make uninstall`

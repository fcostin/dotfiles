-- quick easy ref for standing up xmonad + gnome panel in ubuntu:
-- ref: http://www.kunday.com/post/35700432761/barebones-xmonad-config-for-ubuntu

import XMonad

main = xmonad defaultConfig
    { modMask = mod4Mask -- use windows key as meta
    }

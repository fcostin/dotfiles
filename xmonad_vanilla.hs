-- quick easy ref for standing up xmonad + gnome panel in ubuntu:
-- ref: http://www.kunday.com/post/35700432761/barebones-xmonad-config-for-ubuntu

import XMonad
import qualified Data.Map as M

main = xmonad defaultConfig
    { modMask = mod4Mask -- use windows key as meta, not alt.
    , keys = newKeys
    }

-- we need to do this otherwise we blow away all the default key config
-- which is... undesirable.

newKeys x = myKeys x `M.union` keys defaultConfig x

myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList [((0, xK_Super_L), return ())] -- prevent any application (eg VIRTUALBOX!) from capturing the mod key


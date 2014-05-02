-- quick easy ref for standing up xmonad + gnome panel in ubuntu:
-- ref: http://www.kunday.com/post/35700432761/barebones-xmonad-config-for-ubuntu

import XMonad
import XMonad.Config.Gnome
import XMonad.Actions.PhysicalScreens
import qualified Data.Map as M


-- use windows key instead of alt for mod key
main = do
	xmonad $ gnomeConfig { modMask=mod4Mask, keys = newKeys}

-- we need to do this otherwise we blow away all the default key config
-- which is... undesirable.

newKeys x = myKeys x `M.union` keys gnomeConfig x

-- override default mod+w ; mod+e ; mod+r keybindings to
-- order screens by PHYSICAL LOCATION instead of by some
-- arbitrary order decided by xorg.
-- ref:		http://xmonad.org/xmonad-docs/xmonad-contrib/XMonad-Actions-PhysicalScreens.html

myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList
	([((modm .|. mask, key), f sc)
	     | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]
	     , (f, mask) <- [(viewScreen, 0), (sendToScreen, shiftMask)]]
    ++
    [((0, xK_Super_L), return ())]) -- prevent any application from capturing the mod key aka the windows key

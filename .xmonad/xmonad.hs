import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Hooks.SetWMName
import XMonad.Hooks.ManageHelpers
import qualified XMonad.StackSet as W
import System.IO
import Control.Monad

main = do
  xmproc <- spawnPipe "xmobar"
  xmonad $ defaultConfig
    {
      terminal = "urxvtc"
      , manageHook = myManageHook <+> manageDocks <+> manageHook defaultConfig
      , layoutHook = avoidStruts $ layoutHook defaultConfig
      , handleEventHook = docksEventHook <+> handleEventHook defaultConfig
      , startupHook = setWMName "LG3D"
      , logHook = dynamicLogWithPP xmobarPP
        {
          ppOutput = hPutStrLn xmproc
          , ppTitle = xmobarColor "green" "" . shorten 50
        }
      , modMask = mod4Mask
      , workspaces = myWorkspaces
    } `additionalKeys`
    [
      ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
    , ((mod4Mask, xK_p), spawn "exe=`dmenu_path | /usr/bin/yeganesh -- -i -sb orange -nb black -nf grey` && eval \"exec $exe\"")
    ]

myWorkspaces = ["1:term","2:code","3:web","4:vm","5:media"] ++ map show [6..9]

myManageHook = composeAll
  [
    className =? "Pidgin"        --> doShift "5:media"
  , className =? "Chromium"      --> doShift "3:web"
  , className =? "Firefox"       --> doShift "3:web"
  , className =? "Google-chrome" --> doShift "3:web"
  , resource  =? "skype"         --> doShift "5:media"
  , className =? "Cairo-dock"    --> doIgnore
  , className =? "Docky"         --> doIgnore
  , isFullscreen --> (doF W.focusDown <+> doFullFloat)
  ]

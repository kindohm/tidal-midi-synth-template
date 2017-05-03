-- replace %MODULE_NAME% with the name of your module. 
-- DO NOT use spaces. USE camel casing. START with an uppercase letter.
-- e.g. "CustomSynth"

-- replace %CONTROLLER_NAME% with the name of the controller you'll use in the editor. 
-- DO NOT use spaces. USE camel casing. START with a lowercase letter.
-- e.g. "customSynthController"

module %MODULE_NAME% where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.Control

-- example custom MIDI parameter
(customParam, customParam_p) = pF "customParam" (Just 0)

%CONTROLLER_NAME% :: ControllerShape
%CONTROLLER_NAME% = ControllerShape { controls = [
                            -- wire up custom MIDI params to CC values here
                            mCC customParam_p 1
                          ],
                         latency = 0.5
                       }

synth = toShape %CONTROLLER_NAME%

# Tidal MIDI Custom Synth Template
This is a template project to help you define custom TidalCycles MIDI synth modules.

Not familiar with TidalCycles? Do not fear: http://tidalcycles.org.

More information about TidalCycles MIDI can be found at https://github.com/tidalcycles/tidal-midi.

# Instructions

Really, you just need to replace these generic "CustomSynth" strings in the files here with
your own custom synth names. You will need to replace _both a module name and a controller name_.

Please refer to ***THIS AWESOME YOUTUBE TUTORIAL*** for a walk-through.

1. In the `CustomSynth.cabal` and `CustomSynth.hs` files, replace `%MODULE_NAME%` with the name
of your synth module. e.g. `EpicSynth`

2. In the `CustomSynth.hs` file, replace `%CONTROLLER_NAME%` with the name of your synth controller
that you want to use when booting up your synth connection. e.g. `epicSynthController`.

3. Rename `CustomSynth.cabal` and `CustomSynth.hs` to match the module name you used in step #1.
e.g. `EpicSynth.cabal` and `EpicSynth.hs`

4. From a terminal, run `cabal install` in the directory where these files are located.
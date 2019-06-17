# AudioFetch SDK Stops Other Music Bug

Project that reproduces a bug where AudioFetch SDK would stop other apps from playing music when the SDK is instantiated or when the app that uses the SDK becomes active.

To run this project, clone it, open `AudioFetchSDKTest.xcworkspace`, set your development team in the target settings and run on a physical device.

## Bug: stops audio playback from other apps on init

Steps to reproduce:

1. Start playing audio from any other app (for example Spotify)
2. Launch this demo project
3. Tap `getAudioManagerInstance` button

Observe that the audio that was played by another app has been stopped. This should not happen -- merely instantiating SDK should not stop currently playing audio.

## Bug: stops audio playback from other apps on becoming active

Steps to reproduce:

1. Launch this demo project
2. Tap `getAudioManagerInstance` button
3. Go to any other app and start playing audio (for example Spotify)
4. Return back to the demo project app

Observe that the audio that was played by another app has been stopped. This should not happen -- bringing the app that uses the SDK to foreground should not stop audio playback from other apps.

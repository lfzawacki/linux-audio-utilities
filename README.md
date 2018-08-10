# linux-audio-utilities

[![português](br.png) Em português](/README_pt-BR.md)

Some scripts I use to setup my laptop for low latency audio recording on Linux (mint). The main goal is to be able to setup a low enough latency time for the JACK server and get no XRUNs (the sound glitches that happen when your processor is not fast enough for your audio workload).

## Contained scripts

These scripts are suited for the work I do and you may have to read through them and adapt them to fit your uses.

* **stop-for-audio** : Stops a bunch of system services and remove some kernel modules that can cause interruptions or processing spikes while recording
* **back-from-audio**: Brings back the stuff the is closed by the previous script
* **stop-for-stream** and **back-from-stream**: The same as the previous scripts, but maintains the internet connection active so I can stream (via Twich.tv or Youtube) while having low latency audio;
* **cpu-boost**: I don't use this anymore - see next script for the reason - but you can adjust this script to force your processor into a faster (for better processing) or slower (for power-saving) frequencies. This is not normally necessary when you have the Linux cpu governor services active, but they can cause XRUNs when we're using low latency audio
* **unlock-cpu**: This computer I'm using has a [pretty naughty BIOS setting](https://askubuntu.com/questions/303882/maximum-cpu-frequency-stuck-at-low-value) that makes Linux cap the maximum processor speed at most times. This script deactivates this "feature", but I actually don't need to run it because it can be deactivated in a boot configuration (see the linked SO question)
* **jack-after-startup**: This and the next script can be configured to be run by the qjacktl GUI before or after the JACK server is started. I don't do much on startup, just setting up a2jmidid for better MIDI device compatibility
* **jack-after-shutdown**: Here I just kill everything JACK and a2jmidid

## Extra tips

* Use the [realtimeconfigquickscan](https://github.com/raboof/realtimeconfigquickscan) and follow their advice to setup your computer with low latency audio.
* Desktop or toolbar widgets that refresh from time to time (weather, news, temperature sensors, processor clock, etc...) can cause XRUNs so just don't have them active on your recording computer.
* I recommend using [KXStudio](http://kxstudio.linuxaudio.org/) and specially Cadence to help on configuring the JACK server, specially if you need to interoperate JACK with Pulseaudio.

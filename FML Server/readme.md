## FML Server
1. Установить forge сервер
2. Взять основную сборку и убрать:
    - LegendaryTooltips
    - OptifineCapes
    - EnhancedBlockEntities
    - reforgium
    - oculus-flywheel-compat
    - oculus
    - ImmediatelyFastReforged

Полная инструкция из дискорда Poetica:
```
Not sure this should be in the Poetica Discord but TFC Reloaded also points here so...

For those interested, steps which allowed me to set up a server for 1.18.2 (TFCR 2.1.1):

SERVER:
Forwarding both port 25565 and 24454 (Minecraft and VoiceChat respectively)
Downloading & installing latest recommended forge server (1.18.2-40.2.0 at time of typing).
Downloading latest TFC Reloaded 1.18.2 (v2.1.1) zip from curseforge.
Adding -nogui to server run script
Running server once, accepting EULA etc.
Copying content from TFCR zip override folder to server (config, defaultconfigs etc).
Copying client mod folder to server mod folder.
Removing the following mods from server:
LegendaryTooltips
OptifineCapes
EnhancedBlockEntities
reforgium
oculus-flywheel-compat
oculus
ImmediatelyFastReforged
Set server.properties and jvm arguments (see below)
Removing world folder, so new level type is in effect

server.properties changes:
allow-flight=true (unsure if necessary, but other modpacks tend to have kick issues sometimes so why not)
level-type=tfc:tng
max-tick-time=600000

Server java arguments:
-Xms4G
-Xmx6G
-XX:+UseG1GC
-XX:+ParallelRefProcEnabled
-XX:MaxGCPauseMillis=200
-XX:+UnlockExperimentalVMOptions
-XX:+DisableExplicitGC
-XX:+AlwaysPreTouch
-XX:G1NewSizePercent=30
-XX:G1MaxNewSizePercent=40
-XX:G1HeapRegionSize=8M
-XX:G1ReservePercent=20
-XX:G1HeapWastePercent=5
-XX:G1MixedGCCountTarget=4
-XX:InitiatingHeapOccupancyPercent=15
-XX:G1MixedGCLiveThresholdPercent=90
-XX:G1RSetUpdatingPauseTimePercent=5
-XX:SurvivorRatio=32
-XX:+PerfDisableSharedMem
-XX:MaxTenuringThreshold=1

CLIENTS:
Disable patch MC-147605 in config for Debugify (thanks @Luv N Hugz |UwU| )

Input to make this more comprehensive/correct is greatly appreciated, or general questions.```
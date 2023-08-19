# bin


"./Adoptium/bin/java.exe" -Xms4G -Xmx4G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=150 -XX:+UnlockExperimentalVMOptions -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=32M -XX:G1ReservePercent=20 -XX:+UseCompressedOops -XX:GCTimeRatio=4 -XX:XX:ConcGCThreads=4 -XX:ParallelGCThreads=4 -XX:XX:InitiatingHeapOccupancyPercent=70 -XX:UseAdaptiveSizePolicy -UseAdaptiveSizePolicy=15 -XX:-UseBiasedLocking -jar server.jar --nogui

echo "#By changing the setting below to TRUE you are indicating your agreement to our EULA (https://aka.ms/MinecraftEULA)." > eula.txt
echo "#$(date)" >> eula.txt  
echo "eula=true" >> eula.txt

"./Adoptium/bin/java.exe" -Xms5G -Xmx5G -XX:+UseG1GC -XX:MaxGCPauseMillis=150 -XX:+UnlockExperimentalVMOptions -XX:+AlwaysPreTouch -XX:G1MixedGCCountTarget=3 -XX:InitiatingHeapOccupancyPercent=70 -XX:+UseAdaptiveSizePolicy -XX:ConcGCThreads=4 -XX:ParallelGCThreads=4 -XX:-UseBiasedLocking -Xlog:gc* -jar server.jar --nogui

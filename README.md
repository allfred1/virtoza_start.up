# Minecraft Start Config
Here is a description of what this Minecraft server startup script is doing:

The script starts the Java Virtual Machine (JVM) using the Adoptium Java runtime at ./Adoptium/bin/java.exe. It passes a number of JVM arguments to optimize the performance of the Minecraft server.

The key JVM arguments are:

-Xms5G -Xmx5G - Sets initial and maximum heap size to 5GB. This allocates enough memory for the server.

-XX:+UseG1GC - Uses the G1 garbage collector, which is efficient for multiprocessor machines.

-XX:MaxGCPauseMillis=150 - Targets a maximum GC pause time of 150 milliseconds to reduce lag.

-XX:G1MixedGCCountTarget=3 - Sets a target of 3 mixed garbage collections before a full GC. Lower to reduce overhead.

-XX:InitiatingHeapOccupancyPercent=70 - Starts GC at 70% heap occupancy to avoid full GCs.

-XX:+UseAdaptiveSizePolicy - Dynamically sizes generation spaces to improve memory utilization.

-XX:ConcGCThreads=4 - Sets 4 threads for concurrent GC to parallelize marking.

-XX:-UseBiasedLocking - Disables biased locking to avoid contention.

-Xlog:gc* - Enables GC logging to file output to tune garbage collection.

The script then launches the Minecraft server with the optimized JVM settings, allowing high performance and throughput. The parameters target low GC overhead and pause times.

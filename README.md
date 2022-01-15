# firebase_test

A Flutter project to test Firebase connection.

## Current issue

After initilize  Firebase and try to get some data : 
```
I/RepoOperation(14722): get for query /user falling back to disk cache after error: Client is offline
E/firebase_database(14722): An unknown error occurred handling native method call Query#get
E/firebase_database(14722): java.util.concurrent.ExecutionException: java.lang.Exception: Client is offline
E/firebase_database(14722): 	at com.google.android.gms.tasks.Tasks.zzb(Unknown Source)
E/firebase_database(14722): 	at com.google.android.gms.tasks.Tasks.await(Unknown Source)
E/firebase_database(14722): 	at io.flutter.plugins.firebase.database.FirebaseDatabasePlugin.lambda$queryGet$8$FirebaseDatabasePlugin(FirebaseDatabasePlugin.java:248)
E/firebase_database(14722): 	at io.flutter.plugins.firebase.database.-$$Lambda$FirebaseDatabasePlugin$zohedUhq4ZX8w6dhHgizPHWixGY.call(lambda)
E/firebase_database(14722): 	at com.google.android.gms.tasks.zzv.run(Unknown Source)
E/firebase_database(14722): 	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1113)
E/firebase_database(14722): 	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:588)
E/firebase_database(14722): 	at java.lang.Thread.run(Thread.java:833)
E/firebase_database(14722): Caused by: java.lang.Exception: Client is offline
E/firebase_database(14722): 	at com.google.firebase.database.connection.PersistentConnectionImpl.lambda$get$1$PersistentConnectionImpl(PersistentConnectionImpl.java:441)
E/firebase_database(14722): 	at com.google.firebase.database.connection.-$$Lambda$PersistentConnectionImpl$DHovbqW2nxPacSd_wNZBtpYapws.run(lambda)
E/firebase_database(14722): 	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:423)
E/firebase_database(14722): 	at java.util.concurrent.FutureTask.run(FutureTask.java:237)
E/firebase_database(14722): 	at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.access$201(ScheduledThreadPoolExecutor.java:154)
E/firebase_database(14722): 	at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.run(ScheduledThreadPoolExecutor.java:269)
E/firebase_database(14722): 	... 3 more
E/flutter (14722): [ERROR:flutter/lib/ui/ui_dart_state.cc(209)] Unhandled Exception: [firebase_database/unknown] java.lang.Exception: Client is offline
E/flutter (14722): 
E/flutter (14722): #0      StandardMethodCodec.decodeEnvelope (package:flutter/src/services/message_codecs.dart:607:7)
E/flutter (14722): #1      MethodChannel._invokeMethod (package:flutter/src/services/platform_channel.dart:167:18)
E/flutter (14722): <asynchronous suspension>
E/flutter (14722): #2      MethodChannel.invokeMapMethod (package:flutter/src/services/platform_channel.dart:367:43)
E/flutter (14722): <asynchronous suspension>
E/flutter (14722): #3      MethodChannelQuery.get (package:firebase_database_platform_interface/src/method_channel/method_channel_query.dart:74:22)
E/flutter (14722): <asynchronous suspension>
E/flutter (14722): #4      Query.get (package:firebase_database/src/query.dart:21:27)
E/flutter (14722): <asynchronous suspension>
E/flutter (14722): #5      _MyHomePageState._listenToUserDatabase (package:firebase_test/main.dart:112:25)
E/flutter (14722): <asynchronous suspension>
E/flutter (14722): 
E/flutter (14722): #0      MethodChannelQuery.get (package:firebase_database_platform_interface/src/method_channel/method_channel_query.dart:86:7)
E/flutter (14722): <asynchronous suspension>
E/flutter (14722): #1      Query.get (package:firebase_database/src/query.dart:21:27)
E/flutter (14722): <asynchronous suspension>
E/flutter (14722): #2      _MyHomePageState._listenToUserDatabase (package:firebase_test/main.dart:112:25)
E/flutter (14722): <asynchronous suspension>
E/flutter (14722): 
I/System  (14722): core_booster, getBoosterConfig = false
```

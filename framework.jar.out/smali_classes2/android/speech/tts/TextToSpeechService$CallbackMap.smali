.class Landroid/speech/tts/TextToSpeechService$CallbackMap;
.super Landroid/os/RemoteCallbackList;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Landroid/speech/tts/ITextToSpeechCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallerToCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/speech/tts/ITextToSpeechCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method private constructor <init>(Landroid/speech/tts/TextToSpeechService;)V
    .locals 1
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;

    .prologue
    .line 1412
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 1414
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1413
    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    .line 1412
    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/tts/TextToSpeechService;Landroid/speech/tts/TextToSpeechService$CallbackMap;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;

    .prologue
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;-><init>(Landroid/speech/tts/TextToSpeechService;)V

    return-void
.end method

.method private getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;
    .locals 4
    .param p1, "caller"    # Ljava/lang/Object;

    .prologue
    move-object v0, p1

    .line 1511
    check-cast v0, Landroid/os/IBinder;

    .line 1512
    .local v0, "asBinder":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v3

    .line 1513
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/ITextToSpeechCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    monitor-exit v3

    .line 1516
    return-object v1

    .line 1512
    .end local v1    # "cb":Landroid/speech/tts/ITextToSpeechCallback;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public dispatchOnAudioAvailable(Ljava/lang/Object;Ljava/lang/String;[B)V
    .locals 5
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;
    .param p3, "buffer"    # [B

    .prologue
    .line 1483
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1484
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_0

    return-void

    .line 1486
    :cond_0
    :try_start_0
    invoke-interface {v0, p2, p3}, Landroid/speech/tts/ITextToSpeechCallback;->onAudioAvailable(Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    :goto_0
    return-void

    .line 1487
    :catch_0
    move-exception v1

    .line 1488
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback dispatchOnAudioAvailable(String, byte[]) failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchOnBeginSynthesis(Ljava/lang/Object;Ljava/lang/String;III)V
    .locals 5
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;
    .param p3, "sampleRateInHz"    # I
    .param p4, "audioFormat"    # I
    .param p5, "channelCount"    # I

    .prologue
    .line 1473
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1474
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_0

    return-void

    .line 1476
    :cond_0
    :try_start_0
    invoke-interface {v0, p2, p3, p4, p5}, Landroid/speech/tts/ITextToSpeechCallback;->onBeginSynthesis(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1472
    :goto_0
    return-void

    .line 1477
    :catch_0
    move-exception v1

    .line 1478
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback dispatchOnBeginSynthesis(String, int, int, int) failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchOnError(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 5
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    .line 1463
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1464
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_0

    return-void

    .line 1466
    :cond_0
    :try_start_0
    invoke-interface {v0, p2, p3}, Landroid/speech/tts/ITextToSpeechCallback;->onError(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    :goto_0
    return-void

    .line 1467
    :catch_0
    move-exception v1

    .line 1468
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback onError failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchOnStart(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 1452
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1453
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_0

    return-void

    .line 1455
    :cond_0
    :try_start_0
    invoke-interface {v0, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onStart(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    :goto_0
    return-void

    .line 1456
    :catch_0
    move-exception v1

    .line 1457
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback onStart failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchOnStop(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;
    .param p3, "started"    # Z

    .prologue
    .line 1432
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1433
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_0

    return-void

    .line 1435
    :cond_0
    :try_start_0
    invoke-interface {v0, p2, p3}, Landroid/speech/tts/ITextToSpeechCallback;->onStop(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    :goto_0
    return-void

    .line 1436
    :catch_0
    move-exception v1

    .line 1437
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback onStop failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchOnSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 1442
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1443
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_0

    return-void

    .line 1445
    :cond_0
    :try_start_0
    invoke-interface {v0, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    :goto_0
    return-void

    .line 1446
    :catch_0
    move-exception v1

    .line 1447
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback onDone failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public kill()V
    .locals 2

    .prologue
    .line 1503
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v1

    .line 1504
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1505
    invoke-super {p0}, Landroid/os/RemoteCallbackList;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1502
    return-void

    .line 1503
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/IInterface;
    .param p2, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 1493
    check-cast p1, Landroid/speech/tts/ITextToSpeechCallback;

    .end local p1    # "callback":Landroid/os/IInterface;
    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->onCallbackDied(Landroid/speech/tts/ITextToSpeechCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onCallbackDied(Landroid/speech/tts/ITextToSpeechCallback;Ljava/lang/Object;)V
    .locals 3
    .param p1, "callback"    # Landroid/speech/tts/ITextToSpeechCallback;
    .param p2, "cookie"    # Ljava/lang/Object;

    .prologue
    move-object v0, p2

    .line 1494
    check-cast v0, Landroid/os/IBinder;

    .line 1495
    .local v0, "caller":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v2

    .line 1496
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1493
    return-void

    .line 1495
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V
    .locals 3
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "cb"    # Landroid/speech/tts/ITextToSpeechCallback;

    .prologue
    .line 1417
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v2

    .line 1419
    if-eqz p2, :cond_1

    .line 1420
    :try_start_0
    invoke-virtual {p0, p2, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1421
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/ITextToSpeechCallback;

    .line 1425
    .local v0, "old":Landroid/speech/tts/ITextToSpeechCallback;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    .line 1426
    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1416
    return-void

    .line 1423
    .end local v0    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/ITextToSpeechCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    goto :goto_0

    .line 1417
    .end local v0    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

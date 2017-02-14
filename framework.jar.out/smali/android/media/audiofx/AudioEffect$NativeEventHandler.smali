.class Landroid/media/audiofx/AudioEffect$NativeEventHandler;
.super Landroid/os/Handler;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/AudioEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private mAudioEffect:Landroid/media/audiofx/AudioEffect;

.field final synthetic this$0:Landroid/media/audiofx/AudioEffect;


# direct methods
.method public constructor <init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-nez v11, :cond_0

    return-void

    :cond_0
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    const-string/jumbo v11, "AudioEffect-JAVA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleMessage() Unknown event type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v12, v11, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v11}, Landroid/media/audiofx/AudioEffect;->-get1(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v12

    if-eqz v1, :cond_1

    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    :goto_1
    invoke-interface {v1, v12, v11}, Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;->onEnableStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x0

    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v12, v11, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_1
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v11}, Landroid/media/audiofx/AudioEffect;->-get0(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    monitor-exit v12

    if-eqz v0, :cond_1

    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    :goto_2
    invoke-interface {v0, v12, v11}, Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;->onControlStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    goto :goto_0

    :catchall_1
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    :pswitch_2
    const/4 v5, 0x0

    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v12, v11, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_2
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v11}, Landroid/media/audiofx/AudioEffect;->-get3(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    monitor-exit v12

    if-eqz v5, :cond_1

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    const/4 v11, 0x0

    invoke-static {v3, v11}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v7

    const/4 v11, 0x4

    invoke-static {v3, v11}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v6

    const/16 v11, 0x8

    invoke-static {v3, v11}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v10

    new-array v4, v6, [B

    new-array v9, v10, [B

    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-static {v3, v11, v4, v12, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v11, 0x0

    invoke-static {v3, v8, v9, v11, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-interface {v5, v11, v7, v4, v9}, Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V

    goto :goto_0

    :catchall_2
    move-exception v11

    monitor-exit v12

    throw v11

    :pswitch_3
    const/4 v2, 0x0

    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v12, v11, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_3
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v11}, Landroid/media/audiofx/AudioEffect;->-get2(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnErrorListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v2

    monitor-exit v12

    if-eqz v2, :cond_1

    const-string/jumbo v11, "AudioEffect-JAVA"

    const-string/jumbo v12, "NATIVE_EVENT_ERROR"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Landroid/media/audiofx/AudioEffect$OnErrorListener;->onError()V

    goto/16 :goto_0

    :catchall_3
    move-exception v11

    monitor-exit v12

    throw v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

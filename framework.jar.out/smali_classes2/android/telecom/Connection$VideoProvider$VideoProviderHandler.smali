.class final Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
.super Landroid/os/Handler;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoProviderHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/Connection$VideoProvider;


# direct methods
.method public constructor <init>(Landroid/telecom/Connection$VideoProvider;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/IBinder;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/internal/telecom/IVideoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v8

    if-nez v8, :cond_0

    const-string/jumbo v0, "Telecom-Connection"

    const-string/jumbo v1, "MSG_ADD_VIDEO_CALLBACK - skipped; callback is null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Telecom-Connection"

    const-string/jumbo v1, "MSG_ADD_VIDEO_CALLBACK - skipped; already present."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Telecom-Connection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_ADD_VIDEO_CALLBACK - binder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v2}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/IBinder;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/internal/telecom/IVideoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v8

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Telecom-Connection"

    const-string/jumbo v1, "MSG_REMOVE_VIDEO_CALLBACK - skipped; not present."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Telecom-Connection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_REMOVE_VIDEO_CALLBACK - binder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v2}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    :try_start_0
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSetCamera(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, v6, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v4, v6, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v5, v6, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-virtual/range {v0 .. v5}, Landroid/telecom/Connection$VideoProvider;->onSetCamera(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    :pswitch_3
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetDeviceOrientation(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSetZoom(F)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    :try_start_1
    const-string/jumbo v1, "Telecom-Connection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_SEND_SESSION_MODIFY_REQUEST - from: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v2, v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    :pswitch_8
    const-string/jumbo v1, "Telecom-Connection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_SEND_SESSION_MODIFY_RESPONSE - response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v0}, Landroid/telecom/Connection$VideoProvider;->onRequestCameraCapabilities()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v0}, Landroid/telecom/Connection$VideoProvider;->onRequestConnectionDataUsage()V

    goto/16 :goto_0

    :pswitch_b
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSetPauseImage(Landroid/net/Uri;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_1
    .end packed-switch
.end method

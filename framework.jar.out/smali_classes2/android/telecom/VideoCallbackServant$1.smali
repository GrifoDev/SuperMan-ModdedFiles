.class Landroid/telecom/VideoCallbackServant$1;
.super Landroid/os/Handler;
.source "VideoCallbackServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallbackServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallbackServant;


# direct methods
.method constructor <init>(Landroid/telecom/VideoCallbackServant;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/VideoCallbackServant;

    .prologue
    .line 45
    iput-object p1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private internalHandleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 64
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v3

    .line 65
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 66
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    .line 67
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 64
    invoke-interface {v3, v4, v1, v2}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 68
    throw v1

    .line 74
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 76
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IVideoCallback;->handleCallSessionEvent(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 77
    :catchall_1
    move-exception v1

    .line 78
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 77
    throw v1

    .line 83
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 85
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IVideoCallback;->changePeerDimensions(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 87
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 86
    :catchall_2
    move-exception v1

    .line 87
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 86
    throw v1

    .line 92
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 94
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v2

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telecom/IVideoCallback;->changeCallDataUsage(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 96
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 95
    :catchall_3
    move-exception v1

    .line 96
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 95
    throw v1

    .line 101
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IVideoCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    goto/16 :goto_0

    .line 105
    :pswitch_6
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get0(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IVideoCallback;->changeVideoQuality(I)V

    goto/16 :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 49
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/VideoCallbackServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

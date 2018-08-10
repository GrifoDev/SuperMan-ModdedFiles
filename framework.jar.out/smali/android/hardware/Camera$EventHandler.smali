.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    const-string/jumbo v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown message type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get10(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get10(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    :cond_0
    return-void

    :sswitch_1
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get9(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get9(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    :cond_1
    return-void

    :sswitch_2
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    :cond_2
    return-void

    :sswitch_3
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v5}, Landroid/hardware/Camera;->-get8(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v5}, Landroid/hardware/Camera;->-get6(Landroid/hardware/Camera;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3, v6}, Landroid/hardware/Camera;->-set0(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    :cond_3
    :goto_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v1, v3, v4}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    :cond_4
    return-void

    :cond_5
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v5}, Landroid/hardware/Camera;->-get11(Landroid/hardware/Camera;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v5, v3, v4}, Landroid/hardware/Camera;->-wrap0(Landroid/hardware/Camera;ZZ)V

    goto :goto_0

    :sswitch_4
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get7(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get7(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    :cond_6
    return-void

    :sswitch_5
    const/4 v0, 0x0

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get1(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get0(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v4

    if-eqz v0, :cond_7

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_8

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v2, v3}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    :cond_7
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_6
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v5}, Landroid/hardware/Camera;->-get12(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v5}, Landroid/hardware/Camera;->-get12(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_a

    :goto_2
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v5, v6, v3, v4}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    :cond_9
    return-void

    :cond_a
    move v3, v4

    goto :goto_2

    :sswitch_7
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get4(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get4(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Landroid/hardware/Camera$Face;

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    :cond_b
    return-void

    :sswitch_8
    const-string/jumbo v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get3(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get3(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v4, v5}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    :cond_c
    return-void

    :sswitch_9
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v5}, Landroid/hardware/Camera;->-get2(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v5}, Landroid/hardware/Camera;->-get2(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_e

    :goto_3
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v5, v4, v3}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    :cond_d
    return-void

    :cond_e
    move v4, v3

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_9
    .end sparse-switch
.end method

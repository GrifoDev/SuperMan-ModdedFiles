.class Lcom/samsung/android/camera/core/SemCamera$EventHandler;
.super Landroid/os/Handler;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Lcom/samsung/android/camera/core/SemCamera;

.field final synthetic this$0:Lcom/samsung/android/camera/core/SemCamera;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x400

    if-ge v2, v3, :cond_0

    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemCamera handleMessage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x400

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get11(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CommonPostEventListener;

    move-result-object v2

    if-eqz v2, :cond_54

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get11(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CommonPostEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$CommonPostEventListener;->onHandleMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :sswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get46(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get46(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;->onShutter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :sswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get41(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get41(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :sswitch_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :sswitch_3
    :try_start_4
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/samsung/android/camera/core/SemCamera$TimeStampFrame;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get39(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;

    move-result-object v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get33(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core/SemCamera;->-set0(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    :cond_4
    :goto_1
    iget-object v2, v12, Lcom/samsung/android/camera/core/SemCamera$TimeStampFrame;->FrameData:[B

    iget-wide v4, v12, Lcom/samsung/android/camera/core/SemCamera$TimeStampFrame;->timeStamp:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;->onPreviewFrame([BJLcom/samsung/android/camera/core/SemCamera;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :goto_2
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get52(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera;->-wrap0(Lcom/samsung/android/camera/core/SemCamera;ZZZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v9

    :try_start_6
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "CAMERA_MSG_PREVIEW_FRAME"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    const-wide/16 v4, 0x400

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get37(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    move-result-object v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get33(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core/SemCamera;->-set0(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    :cond_8
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;->onPreviewFrame([BLcom/samsung/android/camera/core/SemCamera;)V

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get52(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera;->-wrap0(Lcom/samsung/android/camera/core/SemCamera;ZZZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :sswitch_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get24(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_e

    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get26(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v2, v2, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v2, v2, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v2, v2, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage: onIrisDataCallback irisPreviewFd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get24(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v2, v14, v3}, Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;->onIrisDataCallback(Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/camera/core/SemCamera;)V

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_b
    :goto_4
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_c
    :try_start_a
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "Check if IrisPreviewCallback is Enabled or not"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v9

    :try_start_b
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "CAMERA_MSG_IRIS_PREVIEW_DATA : onIrisDataCallback fail"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4

    :cond_e
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mIrisDataCallback is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get24(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_13

    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get25(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v2, v2, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v2, v2, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v2, v2, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage: onIrisDataCallback irisIrFd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get24(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v2, v13, v3}, Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;->onIrisDataCallback(Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/camera/core/SemCamera;)V

    if-eqz v13, :cond_10

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_10
    :goto_5
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_11
    :try_start_d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "Check if IrisIrCallback is Enabled or not"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v9

    :try_start_e
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "CAMERA_MSG_IRIS_DATA : onIrisDataCallback fail"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get0(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_5

    :cond_13
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mIrisDataCallback is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get36(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get36(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_14
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :sswitch_7
    const/4 v8, 0x0

    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get3(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get2(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-object v8

    :try_start_11
    monitor-exit v3

    if-eqz v8, :cond_15

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v8, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;->onAutoFocus(ILcom/samsung/android/camera/core/SemCamera;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_15
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception v2

    :try_start_12
    monitor-exit v3

    throw v2

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;

    move-result-object v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get53(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v4, v2, v5}, Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;->onZoomChange(IZLcom/samsung/android/camera/core/SemCamera;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_16
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_17
    const/4 v2, 0x0

    goto :goto_6

    :sswitch_9
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get17(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$FaceDetectionListener;

    move-result-object v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get16(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get17(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$FaceDetectionListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Lcom/samsung/android/camera/core/SemCamera$Face;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$FaceDetectionListener;->onFaceDetection([Lcom/samsung/android/camera/core/SemCamera$Face;Lcom/samsung/android/camera/core/SemCamera;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_18
    :goto_7
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_19
    :try_start_14
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "Error : face object is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :sswitch_a
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get14(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;

    move-result-object v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get14(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;->onError(ILcom/samsung/android/camera/core/SemCamera;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :cond_1a
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :sswitch_b
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get4(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;

    move-result-object v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get4(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLcom/samsung/android/camera/core/SemCamera;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :cond_1b
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1c
    const/4 v2, 0x1

    goto :goto_8

    :sswitch_c
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get15(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;

    move-result-object v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get15(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;->onExtraInfo(IILcom/samsung/android/camera/core/SemCamera;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :cond_1d
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :sswitch_d
    :try_start_17
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "SAMSUNG_SHOT_COMPRESSED_IMAGE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :cond_1e
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :sswitch_e
    :try_start_18
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "SAMSUNG_BURST_PANORAMA_SHOT_COMPRESSED_IMAGE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :cond_1f
    :goto_9
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_20
    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaError(I)V

    goto :goto_9

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaError(I)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :cond_21
    :goto_a
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :sswitch_10
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaDirectionChanged(I)V

    goto :goto_a

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaRectChanged(II)V

    goto :goto_a

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaCapturedNew()V

    goto :goto_a

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaProgressStitching(I)V

    goto :goto_a

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaCaptured()V

    goto/16 :goto_a

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaLowResolutionData([B)V

    goto/16 :goto_a

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaLivePreviewData([B)V

    goto/16 :goto_a

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaCapturedMaxFrames()V

    goto/16 :goto_a

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get34(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaSlowMove()V

    goto/16 :goto_a

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaError(I)V

    goto/16 :goto_a

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaDirectionChanged(I)V

    goto/16 :goto_a

    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaRectChanged(II)V

    goto/16 :goto_a

    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaProgressStitching(I)V

    goto/16 :goto_a

    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaCaptured()V

    goto/16 :goto_a

    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_22

    const/4 v2, 0x1

    :goto_b
    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaCaptureResult(Z)V

    goto/16 :goto_a

    :cond_22
    const/4 v2, 0x0

    goto :goto_b

    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaThumbnailData([B)V

    goto/16 :goto_a

    :sswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaLivePreviewData([B)V

    goto/16 :goto_a

    :sswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaUiImageData([B)V

    goto/16 :goto_a

    :sswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaCapturedMaxFrames()V

    goto/16 :goto_a

    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get29(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaSlowMove()V

    goto/16 :goto_a

    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get21(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get21(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;->onHdrResultStarted()V

    goto/16 :goto_a

    :sswitch_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get21(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get21(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;->onHdrResultProgress(I)V

    goto/16 :goto_a

    :sswitch_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get21(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get21(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_23

    const/4 v2, 0x1

    :goto_c
    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;->onHdrResultCompleted(Z)V

    goto/16 :goto_a

    :cond_23
    const/4 v2, 0x0

    goto :goto_c

    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get21(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get21(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_24

    const/4 v2, 0x1

    :goto_d
    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;->onHdrAllProgressCompleted(Z)V

    goto/16 :goto_a

    :cond_24
    const/4 v2, 0x0

    goto :goto_d

    :sswitch_28
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BURST_SHOT_CAPTURING_PROGRESSED("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get7(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v2

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get7(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;->onBurstCapturingProgressed(II)V

    goto/16 :goto_a

    :cond_25
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mBurstEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_29
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "BURST_SHOT_CAPTURING_STOPPED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get7(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v2

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get7(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;->onBurstCapturingStopped(I)V

    goto/16 :goto_a

    :cond_26
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mBurstEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_2a
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "BURST_SHOT_SAVING_COMPLETED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get7(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v2

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get7(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;->onBurstSavingCompleted(I)V

    goto/16 :goto_a

    :cond_27
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mBurstEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_2b
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "BURST_SHOT_FILE_STRING"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get7(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get7(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;->onBurstStringProgressed([B)V

    goto/16 :goto_a

    :cond_28
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mBurstEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_2c
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "BURST_SHOT_POSTVIEW_DATA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get36(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get36(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_a

    :cond_29
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mPostviewCallback is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get31(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;

    move-result-object v2

    if-eqz v2, :cond_2a

    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "MULTI_FRAME_SHOT_PROGRESS_POSTPROCESSING "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get31(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;->onMultiFrameCapturingProgressed(II)V

    goto/16 :goto_a

    :cond_2a
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mMultiFrameEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get5(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;

    move-result-object v2

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get5(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;->onBeautySavingProgress(I)V

    goto/16 :goto_a

    :cond_2b
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mBeautyEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get19(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HardwareFaceDetectionListener;

    move-result-object v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get19(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HardwareFaceDetectionListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Lcom/samsung/android/camera/core/SemCamera$Face;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$HardwareFaceDetectionListener;->onHardwareFaceDetection([Lcom/samsung/android/camera/core/SemCamera$Face;Lcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_a

    :cond_2c
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mHardwareFaceDetectionListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_30
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "BEAUTY_SHOT_RELIGHT_TRANSFORM_DATA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get42(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;

    move-result-object v2

    if-eqz v2, :cond_2d

    new-instance v18, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;-><init>(Lcom/samsung/android/camera/core/SemCamera;[BLcom/samsung/android/camera/core/SemCamera$RelightTransformData;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get42(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->-get0(Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;)[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;->onRelightTransformDataUpdated([Lcom/samsung/android/camera/core/SemCamera$TransformData;)V

    const/16 v18, 0x0

    goto/16 :goto_a

    :cond_2d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mRelightEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get28(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get28(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;->onLightConditionChanged(I)V

    goto/16 :goto_a

    :sswitch_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get13(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get13(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$DualEventListener;->onDualCaptureAvailable(I)V

    goto/16 :goto_a

    :sswitch_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get13(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get13(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$DualEventListener;->onDualTrackingAvailable(I)V

    goto/16 :goto_a

    :sswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get22(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-direct {v11, v2}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get22(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;

    move-result-object v2

    invoke-interface {v2, v11}, Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;->onImageEffectInfo(Ljava/lang/String;)V

    const/4 v11, 0x0

    goto/16 :goto_a

    :sswitch_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get38(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get38(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;->onPreviewFrame([BLcom/samsung/android/camera/core/SemCamera;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core/SemCamera;->-set1(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    goto/16 :goto_a

    :sswitch_36
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OUTFOCUS_SHOT_PROCESS_PROGRESS("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get44(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v2

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get44(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;->onSelectiveFocusProcessProgress(II)V

    goto/16 :goto_a

    :cond_2e
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mSelectiveFocusEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_37
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OUTFOCUS_SHOT_CAPTURE_PROGRESS("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get44(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v2

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get44(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;->onSelectiveFocusCaptureProgress(II)V

    goto/16 :goto_a

    :cond_2f
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mSelectiveFocusEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_38
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OUTFOCUS_SHOT_PROCESS_COMPLETE("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get44(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v2

    if-eqz v2, :cond_36

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_30

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_31

    :cond_30
    const/4 v10, -0x1

    :cond_31
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_32

    const/4 v10, -0x2

    :cond_32
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_33

    const/4 v10, -0x4

    :cond_33
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_34

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, -0x4

    if-ne v2, v3, :cond_35

    :cond_34
    const/4 v10, -0x3

    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get44(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v2

    invoke-interface {v2, v10}, Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;->onSelectiveFocusComplete(I)V

    goto/16 :goto_a

    :cond_36
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mSelectiveFocusEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get45(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get45(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;->onShotAndMoreCaptureProgress(II)V

    goto/16 :goto_a

    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get45(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get45(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;->onShotAndMoreProcessProgress(II)V

    goto/16 :goto_a

    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get45(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get45(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;->onShotAndMoreComplete()V

    goto/16 :goto_a

    :sswitch_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get45(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get45(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;->onShotAndMoreApplicableMode(I)V

    goto/16 :goto_a

    :sswitch_3d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "HAZE_REMOVAL_SHOT_PROGRESS_POSTPROCESSING "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get20(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;

    move-result-object v2

    if-eqz v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get20(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;->onHazeRemovalCapturingProgressed(II)V

    goto/16 :goto_a

    :cond_37
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mHazeRemovalShotEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get9(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;

    move-result-object v2

    if-eqz v2, :cond_38

    new-instance v15, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-direct {v15, v2}, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get9(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;

    move-result-object v2

    invoke-interface {v2, v15}, Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;->onCameraSensorData(Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;)V

    const/4 v15, 0x0

    goto/16 :goto_a

    :cond_38
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mCameraSensorDataListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get35(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;

    move-result-object v2

    if-eqz v2, :cond_21

    new-instance v17, Lcom/samsung/android/camera/core/SemCamera$PafResult;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/camera/core/SemCamera$PafResult;-><init>(Lcom/samsung/android/camera/core/SemCamera;[B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get35(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;

    move-result-object v2

    move-object/from16 v0, v17

    iget-short v3, v0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->mode:S

    move-object/from16 v0, v17

    iget-short v4, v0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->goalPos:S

    move-object/from16 v0, v17

    iget-short v5, v0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->reliability:S

    move-object/from16 v0, v17

    iget-short v6, v0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->lensPositionCurrent:S

    move-object/from16 v0, v17

    iget-short v7, v0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->driverResolution:S

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;->onPhaseAutoFocus(SSSSS)V

    const/16 v17, 0x0

    goto/16 :goto_a

    :sswitch_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get30(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;

    move-result-object v2

    if-eqz v2, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get30(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;->onMultiAutoFocus([B)V

    goto/16 :goto_a

    :cond_39
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mMultiAutoFocusCallback is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_41
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "METADATA_OBJECT_TRACKING_AF"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get32(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;

    move-result-object v2

    if-eqz v2, :cond_3a

    new-instance v16, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get32(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;->onObjectTrackingAutoFocus(Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;)V

    const/16 v16, 0x0

    goto/16 :goto_a

    :cond_3a
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mObjectTrackingAutoFocusCallback is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_42
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "SAMSUNG_WIDE_SELFIE_SHOT_COMPRESSED_IMAGE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get27(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :cond_3b
    :goto_e
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_3c
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieError(I)V

    goto :goto_e

    :sswitch_43
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WIDE_SELFIE_SHOT_ERR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieError(I)V

    goto/16 :goto_a

    :sswitch_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieDirectionChanged(I)V

    goto/16 :goto_a

    :sswitch_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieRectChanged([B)V

    goto/16 :goto_a

    :sswitch_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieCapturedNew()V

    goto/16 :goto_a

    :sswitch_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieProgressStitching(I)V

    goto/16 :goto_a

    :sswitch_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieCaptured()V

    goto/16 :goto_a

    :sswitch_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieLowResolutionData([B)V

    goto/16 :goto_a

    :sswitch_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieLivePreviewData([B)V

    goto/16 :goto_a

    :sswitch_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieCapturedMaxFrames()V

    goto/16 :goto_a

    :sswitch_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieSlowMove()V

    goto/16 :goto_a

    :sswitch_4d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "WIDE_SELFIE_SHOT_NEXT_CAPTURE_POSITION"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieNextCapturePosition(II)V

    goto/16 :goto_a

    :cond_3d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mWideSelfieEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_4e
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "WIDE_SELFIE_SHOT_SINGLE_CAPTURE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get51(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieSingleCaptureDone()V

    goto/16 :goto_a

    :cond_3e
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mWideSelfieEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_4f
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WIDE_MOTION_SELFIE_SHOT_ERR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieError(I)V

    goto/16 :goto_a

    :sswitch_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieDirectionChanged(I)V

    goto/16 :goto_a

    :sswitch_51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieRectChanged([B)V

    goto/16 :goto_a

    :sswitch_52
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieCapturedNew()V

    goto/16 :goto_a

    :sswitch_53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieProgressStitching(I)V

    goto/16 :goto_a

    :sswitch_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieCaptured()V

    goto/16 :goto_a

    :sswitch_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieLivePreviewData([B)V

    goto/16 :goto_a

    :sswitch_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieCapturedMaxFrames()V

    goto/16 :goto_a

    :sswitch_57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieSlowMove()V

    goto/16 :goto_a

    :sswitch_58
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "WIDE_MOTION_SELFIE_SHOT_NEXT_CAPTURE_POSITION"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieNextCapturePosition(II)V

    goto/16 :goto_a

    :cond_3f
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mWideMotionSelfieEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_59
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "WIDE_MOTION_SELFIE_SHOT_SINGLE_CAPTURE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieSingleCaptureDone()V

    goto/16 :goto_a

    :cond_40
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mWideMotionSelfieEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_5a
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "WIDE_MOTION_SELFIE_SHOT_PROCESS_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    if-eqz v2, :cond_41

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get50(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieCompleted()V

    goto/16 :goto_a

    :cond_41
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mWideMotionSelfieEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_5b
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AE_RESULT("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get1(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;

    move-result-object v2

    if-eqz v2, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get1(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;->onAutoExposure(I)V

    goto/16 :goto_a

    :cond_42
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mAutoExposureCallback is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_5c
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BRIGHTNESS_VALUE("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    int-to-float v4, v4

    const/high16 v5, 0x43800000    # 256.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get6(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;

    move-result-object v2

    if-eqz v2, :cond_43

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get6(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    const/high16 v4, 0x43800000    # 256.0f

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;->onBrightnessValue(F)V

    goto/16 :goto_a

    :cond_43
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mBrightnessValueCallback is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_5d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "METADATA_BURSTSHOT_FPS_CHANGED("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get8(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;

    move-result-object v2

    if-eqz v2, :cond_44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get8(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;->onBurstShotFpsChanged(I)V

    goto/16 :goto_a

    :cond_44
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mBurstShotFpsCallback is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_5e
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "INTERACTIVE_SHOT_DIRECTION_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get23(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    if-eqz v2, :cond_45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get23(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;->onInteractiveDirectionChanged(II)V

    goto/16 :goto_a

    :cond_45
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mInteractiveShotEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_5f
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "INTERACTIVE_SHOT_DIRECTION_WARNING"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get23(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    if-eqz v2, :cond_46

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get23(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;->onInteractiveDirectionWarning(I)V

    goto/16 :goto_a

    :cond_46
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mInteractiveShotEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_60
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "INTERACTIVE_SHOT_CAPTURE_PROGRESS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get23(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    if-eqz v2, :cond_47

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get23(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;->onInteractiveCaptureProgressed(II)V

    goto/16 :goto_a

    :cond_47
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mInteractiveShotEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_61
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "INTERACTIVE_SHOT_PROCESS_PROGRESS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get23(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    if-eqz v2, :cond_48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get23(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;->onInteractiveProcessProgressed(II)V

    goto/16 :goto_a

    :cond_48
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mInteractiveShotEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_62
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "INTERACTIVE_SHOT_PROCESS_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get23(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    if-eqz v2, :cond_49

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get23(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;->onInteractiveProcessCompleted()V

    goto/16 :goto_a

    :cond_49
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mInteractiveShotEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_63
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "SINGLE_SHOT_QRCODE_DETECT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get40(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    move-result-object v2

    if-eqz v2, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get40(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;->onQrCodeDetection([BLcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_a

    :cond_4a
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mQrCodeDetectionEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_64
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SINGLE_SHOT_QRCODE_DETECT_ERR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get40(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    move-result-object v2

    if-eqz v2, :cond_4b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get40(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;->onQrCodeDetectionError(I)V

    goto/16 :goto_a

    :cond_4b
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mQrCodeDetectionEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_65
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "FOOD_SHOT_RESULT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get18(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;

    move-result-object v2

    if-eqz v2, :cond_4c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get18(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;->onFoodShotComplete([B)V

    goto/16 :goto_a

    :cond_4c
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mFoodShotEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_66
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "COMMON_SHOT_CANCEL_PICTURE_COMPLETED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get10(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    move-result-object v2

    if-eqz v2, :cond_4d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get10(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;->onTakePictureCanceled()V

    goto/16 :goto_a

    :cond_4d
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mCommonEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_67
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "COMMON_SHOT_PREVIEW_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get10(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    move-result-object v2

    if-eqz v2, :cond_4e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get10(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;->onPreviewStarted()V

    goto/16 :goto_a

    :cond_4e
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mCommonEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_68
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "SCREEN_FLASH_TAKEPICTURE_COMPLETED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get43(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;

    move-result-object v2

    if-eqz v2, :cond_4f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get43(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;->onTakePictureCompleted()V

    goto/16 :goto_a

    :cond_4f
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mScreenFlashEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_69
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "SLOW_MOTION_EVENT_RESULT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get47(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;

    move-result-object v2

    if-eqz v2, :cond_50

    new-instance v21, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v2, v4}, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;-><init>(Lcom/samsung/android/camera/core/SemCamera;[BLcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get47(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;

    move-result-object v2

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->-get0(Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;)[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;->onSlowMotionEventResult([Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;)V

    const/16 v21, 0x0

    goto/16 :goto_a

    :cond_50
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mSlowMotionEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_6a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get12(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;

    move-result-object v2

    if-eqz v2, :cond_51

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get12(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;->onDepthMapData([B)V

    goto/16 :goto_a

    :cond_51
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mDepthMapEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_6b
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "STICKER_FACE_ALIGNMENT_DATA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get49(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;

    move-result-object v2

    if-eqz v2, :cond_52

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get49(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;->onFaceAlignmentDataCb([B)V

    goto/16 :goto_a

    :cond_52
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mStickerEventListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :sswitch_6c
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "SMART_FILTER_PARAMETERS_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get48(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;

    move-result-object v2

    if-eqz v2, :cond_53

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->-get48(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-interface {v3, v2}, Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;->onParametersChanged([B)V

    goto/16 :goto_a

    :cond_53
    const-string/jumbo v2, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mSmartFilterListener is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_54
    const-string/jumbo v2, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_0
        0x4 -> :sswitch_7
        0x8 -> :sswitch_8
        0x10 -> :sswitch_3
        0x40 -> :sswitch_6
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_9
        0x800 -> :sswitch_b
        0x8000 -> :sswitch_4
        0xf021 -> :sswitch_f
        0xf022 -> :sswitch_11
        0xf023 -> :sswitch_12
        0xf024 -> :sswitch_13
        0xf025 -> :sswitch_14
        0xf026 -> :sswitch_10
        0xf027 -> :sswitch_15
        0xf028 -> :sswitch_16
        0xf029 -> :sswitch_17
        0xf02a -> :sswitch_18
        0xf041 -> :sswitch_65
        0xf051 -> :sswitch_69
        0xf081 -> :sswitch_24
        0xf082 -> :sswitch_25
        0xf083 -> :sswitch_26
        0xf084 -> :sswitch_27
        0xf091 -> :sswitch_28
        0xf092 -> :sswitch_29
        0xf093 -> :sswitch_2a
        0xf094 -> :sswitch_2b
        0xf095 -> :sswitch_2c
        0xf123 -> :sswitch_2d
        0xf141 -> :sswitch_6b
        0xf151 -> :sswitch_2e
        0xf152 -> :sswitch_2f
        0xf153 -> :sswitch_30
        0xf201 -> :sswitch_d
        0xf203 -> :sswitch_35
        0xf232 -> :sswitch_31
        0xf251 -> :sswitch_32
        0xf252 -> :sswitch_34
        0xf253 -> :sswitch_33
        0xf274 -> :sswitch_63
        0xf275 -> :sswitch_64
        0xf281 -> :sswitch_3d
        0xf291 -> :sswitch_e
        0xf301 -> :sswitch_43
        0xf302 -> :sswitch_45
        0xf303 -> :sswitch_46
        0xf304 -> :sswitch_47
        0xf305 -> :sswitch_48
        0xf306 -> :sswitch_44
        0xf307 -> :sswitch_49
        0xf308 -> :sswitch_4a
        0xf309 -> :sswitch_4b
        0xf30a -> :sswitch_4c
        0xf310 -> :sswitch_4d
        0xf311 -> :sswitch_4e
        0xf312 -> :sswitch_42
        0xf321 -> :sswitch_36
        0xf322 -> :sswitch_37
        0xf323 -> :sswitch_38
        0xf331 -> :sswitch_39
        0xf332 -> :sswitch_3a
        0xf333 -> :sswitch_3b
        0xf334 -> :sswitch_3c
        0xf341 -> :sswitch_3f
        0xf342 -> :sswitch_3e
        0xf343 -> :sswitch_41
        0xf344 -> :sswitch_40
        0xf345 -> :sswitch_5d
        0xf351 -> :sswitch_5b
        0xf352 -> :sswitch_5c
        0xf361 -> :sswitch_5e
        0xf362 -> :sswitch_5f
        0xf363 -> :sswitch_60
        0xf364 -> :sswitch_61
        0xf365 -> :sswitch_62
        0xf381 -> :sswitch_19
        0xf382 -> :sswitch_1b
        0xf383 -> :sswitch_1c
        0xf384 -> :sswitch_1d
        0xf385 -> :sswitch_1e
        0xf386 -> :sswitch_1a
        0xf387 -> :sswitch_1f
        0xf388 -> :sswitch_20
        0xf389 -> :sswitch_21
        0xf38a -> :sswitch_22
        0xf38b -> :sswitch_23
        0xf391 -> :sswitch_4f
        0xf392 -> :sswitch_51
        0xf393 -> :sswitch_52
        0xf394 -> :sswitch_53
        0xf395 -> :sswitch_54
        0xf396 -> :sswitch_50
        0xf398 -> :sswitch_55
        0xf399 -> :sswitch_56
        0xf39a -> :sswitch_57
        0xf39b -> :sswitch_58
        0xf39c -> :sswitch_59
        0xf39d -> :sswitch_5a
        0xf401 -> :sswitch_c
        0xf411 -> :sswitch_66
        0xf412 -> :sswitch_67
        0xf421 -> :sswitch_68
        0xf422 -> :sswitch_6a
        0xf431 -> :sswitch_6c
        0x10000 -> :sswitch_5
    .end sparse-switch
.end method

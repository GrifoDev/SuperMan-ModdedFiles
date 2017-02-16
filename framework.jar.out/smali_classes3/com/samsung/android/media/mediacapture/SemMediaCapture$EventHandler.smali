.class Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;
.super Landroid/os/Handler;
.source "SemMediaCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/mediacapture/SemMediaCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

.field final synthetic this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture;Lcom/samsung/android/media/mediacapture/SemMediaCapture;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture;
    .param p2, "mc"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    .line 396
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 397
    iput-object p2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    .line 395
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 402
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-get0(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 403
    const-string/jumbo v1, "SemMediaCapture"

    const-string/jumbo v2, "mediacapture went away with unhandled events"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void

    .line 406
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 444
    const-string/jumbo v1, "SemMediaCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void

    .line 408
    :sswitch_0
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-get3(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-get3(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {v1, v2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;->onPlaybackCompletion(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    .line 410
    :cond_1
    return-void

    .line 413
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-get5(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 414
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-get5(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {v1, v2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;->onRecordingCompletion(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    .line 415
    :cond_2
    return-void

    .line 418
    :sswitch_2
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-get1(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 419
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-get1(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {v1, v2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;->onDecodingCompletion(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    .line 420
    :cond_3
    return-void

    .line 423
    :sswitch_3
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-get4(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 424
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-get4(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {v1, v2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;->onPrepared(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    .line 425
    :cond_4
    return-void

    .line 428
    :sswitch_4
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-get6(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 429
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-get6(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-interface {v1, v2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;->onRenderingStarted(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)V

    .line 430
    :cond_5
    return-void

    .line 433
    :sswitch_5
    const-string/jumbo v1, "SemMediaCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "error_was_handled":Z
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-get2(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 436
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-static {v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->-get2(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->mMediaCapture:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;->onError(Lcom/samsung/android/media/mediacapture/SemMediaCapture;II)Z

    move-result v0

    .line 438
    .end local v0    # "error_was_handled":Z
    :cond_6
    return-void

    .line 401
    :sswitch_6
    return-void

    .line 406
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_4
        0x64 -> :sswitch_5
    .end sparse-switch
.end method

.class Landroid/media/audiofx/Visualizer$NativeEventHandler;
.super Landroid/os/Handler;
.source "Visualizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Visualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private mVisualizer:Landroid/media/audiofx/Visualizer;

.field final synthetic this$0:Landroid/media/audiofx/Visualizer;


# direct methods
.method public constructor <init>(Landroid/media/audiofx/Visualizer;Landroid/media/audiofx/Visualizer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/audiofx/Visualizer;
    .param p2, "v"    # Landroid/media/audiofx/Visualizer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 653
    iput-object p1, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->this$0:Landroid/media/audiofx/Visualizer;

    .line 654
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 655
    iput-object p2, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 653
    return-void
.end method

.method private handleCaptureMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 659
    const/4 v1, 0x0

    .line 660
    .local v1, "l":Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    iget-object v3, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->this$0:Landroid/media/audiofx/Visualizer;

    invoke-static {v3}, Landroid/media/audiofx/Visualizer;->-get1(Landroid/media/audiofx/Visualizer;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 661
    :try_start_0
    iget-object v3, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {v3}, Landroid/media/audiofx/Visualizer;->-get0(Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "l":Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    monitor-exit v4

    .line 664
    if-eqz v1, :cond_0

    .line 665
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 666
    .local v0, "data":[B
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 668
    .local v2, "samplingRate":I
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 676
    const-string/jumbo v3, "Visualizer-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown native event in handleCaptureMessge: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    .end local v0    # "data":[B
    .end local v2    # "samplingRate":I
    :cond_0
    :goto_0
    return-void

    .line 660
    .local v1, "l":Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 670
    .restart local v0    # "data":[B
    .local v1, "l":Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    .restart local v2    # "samplingRate":I
    :pswitch_0
    iget-object v3, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-interface {v1, v3, v0, v2}, Landroid/media/audiofx/Visualizer$OnDataCaptureListener;->onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V

    goto :goto_0

    .line 673
    :pswitch_1
    iget-object v3, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-interface {v1, v3, v0, v2}, Landroid/media/audiofx/Visualizer$OnDataCaptureListener;->onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V

    goto :goto_0

    .line 668
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleServerDiedMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, "l":Landroid/media/audiofx/Visualizer$OnServerDiedListener;
    iget-object v1, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->this$0:Landroid/media/audiofx/Visualizer;

    invoke-static {v1}, Landroid/media/audiofx/Visualizer;->-get1(Landroid/media/audiofx/Visualizer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 685
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {v1}, Landroid/media/audiofx/Visualizer;->-get2(Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer$OnServerDiedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "l":Landroid/media/audiofx/Visualizer$OnServerDiedListener;
    monitor-exit v2

    .line 688
    if-eqz v0, :cond_0

    .line 689
    invoke-interface {v0}, Landroid/media/audiofx/Visualizer$OnServerDiedListener;->onServerDied()V

    .line 682
    :cond_0
    return-void

    .line 684
    .local v0, "l":Landroid/media/audiofx/Visualizer$OnServerDiedListener;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 694
    iget-object v0, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v0, :cond_0

    .line 695
    return-void

    .line 698
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 707
    const-string/jumbo v0, "Visualizer-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown native event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :goto_0
    return-void

    .line 701
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer$NativeEventHandler;->handleCaptureMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 704
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer$NativeEventHandler;->handleServerDiedMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

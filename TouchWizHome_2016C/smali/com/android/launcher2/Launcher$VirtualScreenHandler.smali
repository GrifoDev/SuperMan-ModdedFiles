.class public Lcom/android/launcher2/Launcher$VirtualScreenHandler;
.super Landroid/os/Handler;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VirtualScreenHandler"
.end annotation


# static fields
.field private static final MSG_SET_OFFSET:I = 0x1


# instance fields
.field private mStop:Z

.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/Launcher$VirtualScreenHandler;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$VirtualScreenHandler;->mStop:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "offsetX"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getOffset()Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-eq v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/Launcher$VirtualScreenHandler;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mVirtualScreenThreadExitAlarm:Lcom/android/launcher2/Alarm;
    invoke-static {v2}, Lcom/android/launcher2/Launcher;->access$1900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Alarm;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    iput-boolean v6, p0, Lcom/android/launcher2/Launcher$VirtualScreenHandler;->mStop:Z

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "force"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v6, v2}, Lcom/android/launcher2/Launcher;->setOffset(IIZ)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher$VirtualScreenHandler;->mStop:Z

    :cond_2
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher$VirtualScreenHandler;->mStop:Z

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Launcher$VirtualScreenHandler;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mVirtualScreenThreadExitAlarm:Lcom/android/launcher2/Alarm;
    invoke-static {v2}, Lcom/android/launcher2/Launcher;->access$1900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Alarm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage InterruptedException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip setOffset - offsetX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized removeMsg()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher$VirtualScreenHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$VirtualScreenHandler;->mStop:Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher$VirtualScreenHandler;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mVirtualScreenThreadExitAlarm:Lcom/android/launcher2/Alarm;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$1900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOffset(Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher$VirtualScreenHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

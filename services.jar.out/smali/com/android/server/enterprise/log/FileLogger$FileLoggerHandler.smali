.class Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;
.super Landroid/os/Handler;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/log/FileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileLoggerHandler"
.end annotation


# instance fields
.field private lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

.field final synthetic this$0:Lcom/android/server/enterprise/log/FileLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/log/FileLogger;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;-><init>(Lcom/android/server/enterprise/log/FileLogger$LogBuffer;)V

    iput-object v0, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    const-string/jumbo v3, "FileLogger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid File Log Handler Message Type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iget-object v3, v3, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->entries:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iput-wide v4, v3, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->lastTimeStamp:J

    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iget-object v3, v3, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v6, 0x14

    if-lt v3, v6, :cond_0

    :pswitch_1
    const-string/jumbo v3, "FileLogger"

    const-string/jumbo v6, "consumerQueue PUT"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v3, v0}, Lcom/android/server/enterprise/log/FileLogger;->-wrap2(Lcom/android/server/enterprise/log/FileLogger;Ljava/util/concurrent/CountDownLatch;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v3}, Lcom/android/server/enterprise/log/FileLogger;->-get0(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v3, "FileLogger"

    const-string/jumbo v6, "producerQueue TAKE"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v3}, Lcom/android/server/enterprise/log/FileLogger;->-get1(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iput-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

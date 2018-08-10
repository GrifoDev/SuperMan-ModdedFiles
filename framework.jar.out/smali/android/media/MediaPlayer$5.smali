.class Landroid/media/MediaPlayer$5;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$fFormat:Landroid/media/MediaFormat;

.field final synthetic val$fIs:Ljava/io/InputStream;

.field final synthetic val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$5;->val$fIs:Ljava/io/InputStream;

    iput-object p3, p0, Landroid/media/MediaPlayer$5;->val$fFormat:Landroid/media/MediaFormat;

    iput-object p4, p0, Landroid/media/MediaPlayer$5;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()I
    .locals 14

    const/16 v13, 0x385

    iget-object v10, p0, Landroid/media/MediaPlayer$5;->val$fIs:Ljava/io/InputStream;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get30(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v10

    if-nez v10, :cond_1

    :cond_0
    return v13

    :cond_1
    iget-object v10, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get30(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$5;->val$fFormat:Landroid/media/MediaFormat;

    invoke-virtual {v10, v11}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v7

    if-nez v7, :cond_2

    return v13

    :cond_2
    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v6, Ljava/util/Scanner;

    iget-object v10, p0, Landroid/media/MediaPlayer$5;->val$fIs:Ljava/io/InputStream;

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v6, v10, v11}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string/jumbo v10, "\\A"

    invoke-virtual {v6, v10}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-object v1

    iget-object v10, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get27(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v11

    monitor-enter v11

    :try_start_2
    iget-object v10, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get27(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v10

    iget-object v12, p0, Landroid/media/MediaPlayer$5;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v10, v12}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v11

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    :cond_3
    iget-object v10, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v11

    monitor-enter v11

    :try_start_3
    iget-object v10, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v10

    const/4 v12, 0x0

    invoke-static {v12, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    monitor-exit v11

    iget-object v10, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get31(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v10

    invoke-static {v10}, Landroid/media/MediaPlayer$TimeProvider;->-get0(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object v3

    const/4 v9, 0x2

    const/4 v0, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v0, v10, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 v10, 0x323

    return v10

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :catch_0
    move-exception v2

    :goto_0
    :try_start_4
    const-string/jumbo v10, "MediaPlayer"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v10, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get27(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v11

    monitor-enter v11

    :try_start_5
    iget-object v10, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get27(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v10

    iget-object v12, p0, Landroid/media/MediaPlayer$5;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v10, v12}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v11

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    :cond_4
    return v13

    :catchall_1
    move-exception v10

    monitor-exit v11

    throw v10

    :catchall_2
    move-exception v10

    :goto_1
    iget-object v11, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v11}, Landroid/media/MediaPlayer;->-get27(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v11

    monitor-enter v11

    :try_start_6
    iget-object v12, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v12}, Landroid/media/MediaPlayer;->-get27(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v12

    iget-object v13, p0, Landroid/media/MediaPlayer$5;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v11

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    :cond_5
    throw v10

    :catchall_3
    move-exception v10

    monitor-exit v11

    throw v10

    :catchall_4
    move-exception v10

    monitor-exit v11

    throw v10

    :catchall_5
    move-exception v10

    move-object v5, v6

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v5, v6

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/media/MediaPlayer$5;->addTrack()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v2, p0, Landroid/media/MediaPlayer$5;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method

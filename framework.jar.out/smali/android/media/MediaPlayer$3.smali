.class Landroid/media/MediaPlayer$3;
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
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .param p2, "val$fIs"    # Ljava/io/InputStream;
    .param p3, "val$fFormat"    # Landroid/media/MediaFormat;
    .param p4, "val$thread"    # Landroid/os/HandlerThread;

    .prologue
    .line 2852
    iput-object p1, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    iput-object p3, p0, Landroid/media/MediaPlayer$3;->val$fFormat:Landroid/media/MediaFormat;

    iput-object p4, p0, Landroid/media/MediaPlayer$3;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()I
    .locals 14

    .prologue
    const/16 v13, 0x385

    .line 2854
    iget-object v10, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get23(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v10

    if-nez v10, :cond_1

    .line 2855
    :cond_0
    return v13

    .line 2858
    :cond_1
    iget-object v10, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get23(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPlayer$3;->val$fFormat:Landroid/media/MediaFormat;

    invoke-virtual {v10, v11}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v7

    .line 2859
    .local v7, "track":Landroid/media/SubtitleTrack;
    if-nez v7, :cond_2

    .line 2860
    return v13

    .line 2866
    :cond_2
    const/4 v5, 0x0

    .line 2867
    .local v5, "scanner":Ljava/util/Scanner;
    const/4 v1, 0x0

    .line 2869
    .local v1, "contents":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/util/Scanner;

    iget-object v10, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v6, v10, v11}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2870
    .end local v5    # "scanner":Ljava/util/Scanner;
    .local v6, "scanner":Ljava/util/Scanner;
    :try_start_1
    const-string/jumbo v10, "\\A"

    invoke-virtual {v6, v10}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-object v1

    .line 2875
    .local v1, "contents":Ljava/lang/String;
    iget-object v10, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get20(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v11

    monitor-enter v11

    .line 2876
    :try_start_2
    iget-object v10, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get20(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v10

    iget-object v12, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v10, v12}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v11

    .line 2879
    if-eqz v6, :cond_3

    .line 2880
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    .line 2892
    :cond_3
    iget-object v10, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get6(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v11

    monitor-enter v11

    .line 2893
    :try_start_3
    iget-object v10, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get6(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v10

    const/4 v12, 0x0

    invoke-static {v12, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    monitor-exit v11

    .line 2895
    iget-object v10, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get24(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v10

    invoke-static {v10}, Landroid/media/MediaPlayer$TimeProvider;->-get0(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object v3

    .line 2897
    .local v3, "h":Landroid/os/Handler;
    const/4 v9, 0x2

    .line 2901
    .local v9, "what":I
    const/4 v0, 0x4

    .line 2902
    .local v0, "arg1":I
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 2903
    .local v8, "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    const/4 v10, 0x0

    invoke-virtual {v3, v9, v0, v10, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2904
    .local v4, "m":Landroid/os/Message;
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2905
    const/16 v10, 0x323

    return v10

    .line 2875
    .end local v0    # "arg1":I
    .end local v3    # "h":Landroid/os/Handler;
    .end local v4    # "m":Landroid/os/Message;
    .end local v8    # "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    .end local v9    # "what":I
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 2871
    .end local v6    # "scanner":Ljava/util/Scanner;
    .local v1, "contents":Ljava/lang/String;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v2

    .line 2872
    .end local v5    # "scanner":Ljava/util/Scanner;
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_4
    const-string/jumbo v10, "MediaPlayer"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2875
    iget-object v10, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get20(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v11

    monitor-enter v11

    .line 2876
    :try_start_5
    iget-object v10, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v10}, Landroid/media/MediaPlayer;->-get20(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v10

    iget-object v12, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v10, v12}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v11

    .line 2879
    if-eqz v5, :cond_4

    .line 2880
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    .line 2873
    :cond_4
    return v13

    .line 2875
    :catchall_1
    move-exception v10

    monitor-exit v11

    throw v10

    .line 2874
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v10

    .line 2875
    :goto_1
    iget-object v11, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v11}, Landroid/media/MediaPlayer;->-get20(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v11

    monitor-enter v11

    .line 2876
    :try_start_6
    iget-object v12, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v12}, Landroid/media/MediaPlayer;->-get20(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v12

    iget-object v13, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v12, v13}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v11

    .line 2879
    if-eqz v5, :cond_5

    .line 2880
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    .line 2874
    :cond_5
    throw v10

    .line 2875
    :catchall_3
    move-exception v10

    monitor-exit v11

    throw v10

    .line 2892
    .local v1, "contents":Ljava/lang/String;
    .restart local v6    # "scanner":Ljava/util/Scanner;
    :catchall_4
    move-exception v10

    monitor-exit v11

    throw v10

    .line 2874
    .local v1, "contents":Ljava/lang/String;
    :catchall_5
    move-exception v10

    move-object v5, v6

    .end local v6    # "scanner":Ljava/util/Scanner;
    .local v5, "scanner":Ljava/util/Scanner;
    goto :goto_1

    .line 2871
    .end local v5    # "scanner":Ljava/util/Scanner;
    .restart local v6    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2909
    invoke-direct {p0}, Landroid/media/MediaPlayer$3;->addTrack()I

    move-result v1

    .line 2910
    .local v1, "res":I
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2911
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2912
    .local v0, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2914
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    .line 2908
    return-void
.end method

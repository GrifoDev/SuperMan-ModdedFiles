.class final Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;
.super Ljava/lang/Thread;
.source "NotificationPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CreationAndCompletionThread"
.end annotation


# instance fields
.field public mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

.field final synthetic this$0:Lcom/android/systemui/media/NotificationPlayer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$Command;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/media/NotificationPlayer;->-set1(Lcom/android/systemui/media/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/media/NotificationPlayer;->-set1(Lcom/android/systemui/media/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->context:Landroid/content/Context;

    const-string/jumbo v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v7

    iput-object v7, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v7, v7, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-boolean v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->looping:Z

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v7}, Lcom/android/systemui/media/NotificationPlayer;->-get1(Lcom/android/systemui/media/NotificationPlayer;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v7}, Lcom/android/systemui/media/NotificationPlayer;->-get5(Lcom/android/systemui/media/NotificationPlayer;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v7}, Lcom/android/systemui/media/NotificationPlayer;->-get10(Lcom/android/systemui/media/NotificationPlayer;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v7}, Lcom/android/systemui/media/NotificationPlayer;->-get1(Lcom/android/systemui/media/NotificationPlayer;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v5

    :goto_0
    invoke-virtual {v4, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v6}, Lcom/android/systemui/media/NotificationPlayer;->-get6(Lcom/android/systemui/media/NotificationPlayer;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v6}, Lcom/android/systemui/media/NotificationPlayer;->-get7(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v6}, Lcom/android/systemui/media/NotificationPlayer;->-get7(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v6, v4}, Lcom/android/systemui/media/NotificationPlayer;->-set3(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->notify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :cond_4
    :try_start_5
    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v7}, Lcom/android/systemui/media/NotificationPlayer;->-get5(Lcom/android/systemui/media/NotificationPlayer;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v5

    goto :goto_0

    :cond_5
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActiveRemotely()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v6}, Lcom/android/systemui/media/NotificationPlayer;->-get8(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v6}, Lcom/android/systemui/media/NotificationPlayer;->-get0(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v6

    if-nez v6, :cond_8

    const/4 v3, 0x3

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-boolean v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->looping:Z

    if-eqz v6, :cond_7

    const/4 v3, 0x1

    :cond_7
    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v8, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v8, v8, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v3, v8}, Landroid/media/AudioManager;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v8

    invoke-static {v6, v8}, Lcom/android/systemui/media/NotificationPlayer;->-set2(Lcom/android/systemui/media/NotificationPlayer;I)I

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v6, v3, v9}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v6, v0}, Lcom/android/systemui/media/NotificationPlayer;->-set0(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_8
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    :try_start_8
    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v6}, Lcom/android/systemui/media/NotificationPlayer;->-get9(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "error loading sound for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v8, v8, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :catchall_1
    move-exception v6

    :try_start_9
    monitor-exit v7

    throw v6

    :catch_1
    move-exception v2

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v6}, Lcom/android/systemui/media/NotificationPlayer;->-get9(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Exception while sleeping to sync notification playback with ducking"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2
.end method

.class Landroid/media/MediaSync$1;
.super Ljava/lang/Object;
.source "MediaSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSync;->postRenderAudio(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaSync;


# direct methods
.method constructor <init>(Landroid/media/MediaSync;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-wide/16 v12, -0x1

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get1(Landroid/media/MediaSync;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get6(Landroid/media/MediaSync;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    float-to-double v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v6, v8, v10

    if-nez v6, :cond_0

    monitor-exit v7

    return-void

    :cond_0
    :try_start_1
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get0(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    monitor-exit v7

    return-void

    :cond_1
    :try_start_2
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get0(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaSync$AudioBuffer;

    iget-object v6, v0, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get2(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlayState()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    const/4 v8, 0x3

    if-eq v6, v8, :cond_2

    :try_start_3
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get2(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioTrack;->play()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_0
    :try_start_4
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get2(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v6

    iget-object v8, v0, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v4, v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v5

    if-lez v5, :cond_5

    iget-wide v8, v0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    cmp-long v6, v8, v12

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    iget-wide v8, v0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    invoke-static {v6, v4, v8, v9}, Landroid/media/MediaSync;->-wrap1(Landroid/media/MediaSync;IJ)V

    const-wide/16 v8, -0x1

    iput-wide v8, v0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    :cond_3
    if-ne v5, v4, :cond_5

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6, v0}, Landroid/media/MediaSync;->-wrap3(Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get0(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get0(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Landroid/media/MediaSync;->-wrap2(Landroid/media/MediaSync;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    monitor-exit v7

    return-void

    :catch_0
    move-exception v1

    :try_start_5
    const-string/jumbo v6, "MediaSync"

    const-string/jumbo v8, "could not start audio track"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_5
    :try_start_6
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v8}, Landroid/media/MediaSync;->-wrap0(Landroid/media/MediaSync;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    const-wide/16 v8, 0x2

    div-long v8, v2, v8

    invoke-static {v6, v8, v9}, Landroid/media/MediaSync;->-wrap2(Landroid/media/MediaSync;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v7

    return-void
.end method

.class Landroid/media/MediaPlayer$4;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$fd3:Ljava/io/FileDescriptor;

.field final synthetic val$length2:J

.field final synthetic val$offset2:J

.field final synthetic val$thread:Landroid/os/HandlerThread;

.field final synthetic val$track:Landroid/media/SubtitleTrack;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V
    .locals 1

    iput-object p1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    iput-wide p3, p0, Landroid/media/MediaPlayer$4;->val$offset2:J

    iput-wide p5, p0, Landroid/media/MediaPlayer$4;->val$length2:J

    iput-object p7, p0, Landroid/media/MediaPlayer$4;->val$track:Landroid/media/SubtitleTrack;

    iput-object p8, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()I
    .locals 24

    const/4 v13, 0x0

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v19, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaPlayer$4;->val$offset2:J

    move-wide/from16 v22, v0

    sget v21, Landroid/system/OsConstants;->SEEK_SET:I

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    const/16 v19, 0x1000

    move/from16 v0, v19

    new-array v8, v0, [B

    const-wide/16 v16, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaPlayer$4;->val$length2:J

    move-wide/from16 v20, v0

    cmp-long v19, v16, v20

    if-gez v19, :cond_0

    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaPlayer$4;->val$length2:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v16

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v8, v1, v10}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v9

    if-gez v9, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/MediaPlayer;->-get24(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/media/MediaPlayer$TimeProvider;->-get0(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object v12

    const/16 v18, 0x2

    const/4 v6, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$4;->val$track:Landroid/media/SubtitleTrack;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v6, v1, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 v19, 0x323

    return v19

    :cond_1
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v8, v0, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v9

    move-wide/from16 v20, v0

    add-long v16, v16, v20

    goto :goto_0

    :catch_0
    move-exception v11

    :try_start_1
    const-string/jumbo v19, "MediaPlayer"

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v19, 0x384

    return v19

    :catchall_0
    move-exception v19

    throw v19
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/media/MediaPlayer$4;->addTrack()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method

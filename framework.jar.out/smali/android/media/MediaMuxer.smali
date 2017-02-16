.class public final Landroid/media/MediaMuxer;
.super Ljava/lang/Object;
.source "MediaMuxer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMuxer$EventHandler;,
        Landroid/media/MediaMuxer$OnInfoListener;,
        Landroid/media/MediaMuxer$OutputFormat;
    }
.end annotation


# static fields
.field public static final MEDIA_MUXER_INFO_CHANGE_BITRATE:I = 0x44c

.field private static final MUXER_STATE_INITIALIZED:I = 0x0

.field private static final MUXER_STATE_STARTED:I = 0x1

.field private static final MUXER_STATE_STOPPED:I = 0x2

.field private static final MUXER_STATE_UNINITIALIZED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MediaMuxer"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mEventHandler:Landroid/media/MediaMuxer$EventHandler;

.field private mLastTrackIndex:I

.field private mNativeObject:J

.field private mOnInfoListener:Landroid/media/MediaMuxer$OnInfoListener;

.field private mState:I


# direct methods
.method static synthetic -get0(Landroid/media/MediaMuxer;)Landroid/media/MediaMuxer$OnInfoListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaMuxer;->mOnInfoListener:Landroid/media/MediaMuxer$OnInfoListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x64

    const/4 v5, -0x1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput v5, p0, Landroid/media/MediaMuxer;->mState:I

    .line 131
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 132
    iput v5, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "path must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 149
    :cond_0
    if-eqz p2, :cond_1

    .line 150
    const/4 v4, 0x1

    if-eq p2, v4, :cond_1

    .line 151
    if-eq p2, v6, :cond_1

    .line 152
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "format is invalid"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    :cond_1
    const/4 v1, 0x0

    .line 158
    .local v1, "file":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rws"

    invoke-direct {v2, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    .local v2, "file":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .end local v1    # "file":Ljava/io/RandomAccessFile;
    move-result-object v0

    .line 160
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-ne p2, v6, :cond_6

    .line 161
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v4, p2}, Landroid/media/MediaMuxer;->nativeSetupRTMP(Ljava/io/FileDescriptor;Ljava/lang/Object;I)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    .line 164
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .local v3, "looper":Landroid/os/Looper;
    if-eqz v3, :cond_3

    .line 165
    new-instance v4, Landroid/media/MediaMuxer$EventHandler;

    invoke-direct {v4, p0, p0, v3}, Landroid/media/MediaMuxer$EventHandler;-><init>(Landroid/media/MediaMuxer;Landroid/media/MediaMuxer;Landroid/os/Looper;)V

    iput-object v4, p0, Landroid/media/MediaMuxer;->mEventHandler:Landroid/media/MediaMuxer$EventHandler;

    .line 174
    .end local v3    # "looper":Landroid/os/Looper;
    :goto_0
    const/4 v4, 0x0

    iput v4, p0, Landroid/media/MediaMuxer;->mState:I

    .line 175
    iget-object v4, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v5, "release"

    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    if-eqz v2, :cond_2

    .line 178
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 145
    :cond_2
    return-void

    .line 166
    .restart local v3    # "looper":Landroid/os/Looper;
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 167
    new-instance v4, Landroid/media/MediaMuxer$EventHandler;

    invoke-direct {v4, p0, p0, v3}, Landroid/media/MediaMuxer$EventHandler;-><init>(Landroid/media/MediaMuxer;Landroid/media/MediaMuxer;Landroid/os/Looper;)V

    iput-object v4, p0, Landroid/media/MediaMuxer;->mEventHandler:Landroid/media/MediaMuxer$EventHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 176
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v4

    move-object v1, v2

    .line 177
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    :goto_1
    if-eqz v1, :cond_4

    .line 178
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 176
    :cond_4
    throw v4

    .line 169
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    .restart local v3    # "looper":Landroid/os/Looper;
    :cond_5
    const/4 v4, 0x0

    :try_start_3
    iput-object v4, p0, Landroid/media/MediaMuxer;->mEventHandler:Landroid/media/MediaMuxer$EventHandler;

    goto :goto_0

    .line 172
    .end local v3    # "looper":Landroid/os/Looper;
    :cond_6
    invoke-static {v0, p2}, Landroid/media/MediaMuxer;->nativeSetup(Ljava/io/FileDescriptor;I)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/media/MediaMuxer;->mNativeObject:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 176
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .restart local v1    # "file":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private static native nativeAddTrack(J[Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeSetLocation(JII)V
.end method

.method private static native nativeSetOrientationHint(JI)V
.end method

.method private static native nativeSetUrl(JLjava/lang/String;)V
.end method

.method private static native nativeSetup(Ljava/io/FileDescriptor;I)J
.end method

.method private static native nativeSetupRTMP(Ljava/io/FileDescriptor;Ljava/lang/Object;I)J
.end method

.method private static native nativeStart(J)V
.end method

.method private static native nativeStop(J)V
.end method

.method private static native nativeWriteSampleData(JILjava/nio/ByteBuffer;IIJI)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "mediamuxer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 602
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediamuxer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaMuxer;

    .line 603
    .local v1, "muxer":Landroid/media/MediaMuxer;
    if-nez v1, :cond_0

    .line 604
    return-void

    .line 607
    :cond_0
    iget-object v2, v1, Landroid/media/MediaMuxer;->mEventHandler:Landroid/media/MediaMuxer$EventHandler;

    if-eqz v2, :cond_1

    .line 608
    iget-object v2, v1, Landroid/media/MediaMuxer;->mEventHandler:Landroid/media/MediaMuxer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaMuxer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 609
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaMuxer;->mEventHandler:Landroid/media/MediaMuxer$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaMuxer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 600
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)I
    .locals 12
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 418
    if-nez p1, :cond_0

    .line 419
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "format must not be null."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 421
    :cond_0
    iget v8, p0, Landroid/media/MediaMuxer;->mState:I

    if-eqz v8, :cond_1

    .line 422
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Muxer is not initialized."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 424
    :cond_1
    iget-wide v8, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 425
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Muxer has been released!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 427
    :cond_2
    const/4 v6, -0x1

    .line 429
    .local v6, "trackIndex":I
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v2

    .line 431
    .local v2, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 432
    .local v4, "keys":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 433
    .local v7, "values":[Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    .line 434
    .local v5, "mapSize":I
    if-lez v5, :cond_4

    .line 435
    new-array v4, v5, [Ljava/lang/String;

    .line 436
    .local v4, "keys":[Ljava/lang/String;
    new-array v7, v5, [Ljava/lang/Object;

    .line 437
    .local v7, "values":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 438
    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 439
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v3

    .line 440
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v3

    .line 441
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-wide v8, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v8, v9, v4, v7}, Landroid/media/MediaMuxer;->nativeAddTrack(J[Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v6

    .line 450
    iget v8, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    if-lt v8, v6, :cond_5

    .line 451
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Invalid format."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 445
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "i":I
    .local v4, "keys":[Ljava/lang/String;
    .local v7, "values":[Ljava/lang/Object;
    :cond_4
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "format must not be empty."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 453
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    .restart local v3    # "i":I
    .local v4, "keys":[Ljava/lang/String;
    .local v7, "values":[Ljava/lang/Object;
    :cond_5
    iput v6, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    .line 454
    return v6
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 281
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 284
    :cond_0
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 285
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeRelease(J)V

    .line 286
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 279
    return-void

    .line 288
    :catchall_0
    move-exception v0

    .line 289
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 288
    throw v0
.end method

.method public release()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 510
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 511
    invoke-virtual {p0}, Landroid/media/MediaMuxer;->stop()V

    .line 513
    :cond_0
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 514
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeRelease(J)V

    .line 515
    iput-wide v2, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    .line 516
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 518
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 509
    return-void
.end method

.method public setLocation(FF)V
    .locals 9
    .param p1, "latitude"    # F
    .param p2, "longitude"    # F

    .prologue
    const v8, 0x461c4000    # 10000.0f

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 226
    mul-float v3, p1, v8

    float-to-double v4, v3

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 227
    .local v0, "latitudex10000":I
    mul-float v3, p2, v8

    float-to-double v4, v3

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 229
    .local v1, "longitudex10000":I
    const v3, 0xdbba0

    if-gt v0, v3, :cond_0

    const v3, -0xdbba0

    if-ge v0, v3, :cond_1

    .line 230
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Latitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " out of range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 233
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    const v3, 0x1b7740

    if-gt v1, v3, :cond_2

    const v3, -0x1b7740

    if-ge v1, v3, :cond_3

    .line 234
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Longitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 238
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    iget v3, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v3, :cond_4

    iget-wide v4, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    .line 239
    iget-wide v4, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v4, v5, v0, v1}, Landroid/media/MediaMuxer;->nativeSetLocation(JII)V

    .line 225
    return-void

    .line 241
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Can\'t set location due to wrong state."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setOnInfoListener(Landroid/media/MediaMuxer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaMuxer$OnInfoListener;

    .prologue
    .line 560
    iput-object p1, p0, Landroid/media/MediaMuxer;->mOnInfoListener:Landroid/media/MediaMuxer$OnInfoListener;

    .line 558
    return-void
.end method

.method public setOrientationHint(I)V
    .locals 3
    .param p1, "degrees"    # I

    .prologue
    .line 199
    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_1

    .line 203
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/media/MediaMuxer;->nativeSetOrientationHint(JI)V

    .line 198
    return-void

    .line 205
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t set rotation degrees due to wrong state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 618
    if-nez p1, :cond_0

    .line 619
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The url should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 623
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/media/MediaMuxer;->nativeSetUrl(JLjava/lang/String;)V

    .line 617
    return-void

    .line 625
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t set url due to wrong state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 253
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Muxer has been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_1

    .line 257
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeStart(J)V

    .line 258
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 252
    return-void

    .line 260
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t start due to wrong state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 271
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeStop(J)V

    .line 272
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 269
    return-void

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t stop due to wrong state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 9
    .param p1, "trackIndex"    # I
    .param p2, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    const-wide/16 v2, 0x0

    .line 473
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    if-le p1, v0, :cond_1

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "trackIndex is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_1
    if-nez p2, :cond_2

    .line 478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "byteBuffer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_2
    if-nez p3, :cond_3

    .line 482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bufferInfo must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_3
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v0, :cond_4

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    if-gez v0, :cond_5

    .line 487
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bufferInfo must specify a valid buffer offset, size and presentation time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_5
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 486
    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 491
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 492
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Muxer has been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_6
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 496
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t write, muxer is not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_7
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    .line 500
    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 501
    iget-wide v6, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move v2, p1

    move-object v3, p2

    .line 499
    invoke-static/range {v0 .. v8}, Landroid/media/MediaMuxer;->nativeWriteSampleData(JILjava/nio/ByteBuffer;IIJI)V

    .line 472
    return-void
.end method

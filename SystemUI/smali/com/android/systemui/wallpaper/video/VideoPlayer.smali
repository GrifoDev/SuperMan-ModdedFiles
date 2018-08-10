.class public Lcom/android/systemui/wallpaper/video/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/video/VideoPlayer$1;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsPendingStarted:Z

.field private mIsPrepared:Z

.field private mIsPreview:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaReleaseHandler:Landroid/os/Handler;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

.field protected mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

.field private mVideoScreenSize:Landroid/graphics/Point;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseMediaPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/video/SurfaceController;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/video/SurfaceController;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/video/SurfaceController;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaReleaseHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/wallpaper/video/-$Lambda$91bjFz59JScvnOPcSGjdmbFOlgU;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/video/-$Lambda$91bjFz59JScvnOPcSGjdmbFOlgU;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    return-void
.end method

.method private getVideoScreenSize(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/graphics/Point;
    .locals 12

    const/4 v3, 0x0

    const/16 v10, 0x280

    const/16 v7, 0x1e0

    const-string/jumbo v11, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_0
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "90"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "270"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, ".Preview"

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVideoScreenSize() w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", r = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v10, v7}, Landroid/graphics/Point;-><init>(II)V

    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getVideoScreenSize() occur exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, ".Preview"

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getVideoScreenSize() file is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_5
    return-object v3

    :cond_3
    :try_start_7
    const-string/jumbo v1, ""
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_4
    :try_start_8
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v7

    goto/16 :goto_1

    :catch_3
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    :try_start_9
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :goto_6
    throw v1

    :catch_4
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_5
    const-string/jumbo v1, ""

    goto/16 :goto_3
.end method

.method private releaseMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, ".Preview"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseMediaPlayer() mp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    return-void

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, ".Preview"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "releaseMediaPlayer() failed stop"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v1, ""

    goto :goto_2
.end method

.method private setSurface()V
    .locals 10

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, ".Preview"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setSurface()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, ".Preview"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setSurface() mediaPlayer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoScreenSize:Landroid/graphics/Point;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, ".Preview"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setSurface() mVideoScreenSize is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, ".Preview"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setSurface() mSurfaceInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string/jumbo v0, ""

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iget v0, v0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->width:I

    int-to-float v9, v0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iget v0, v0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->height:I

    int-to-float v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, ".Preview"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSurface() width = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", height = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoScreenSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v9

    div-float v8, v0, v1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    cmpl-float v1, v8, v2

    if-ltz v1, :cond_9

    move v1, v8

    :goto_5
    cmpg-float v3, v8, v2

    if-gtz v3, :cond_7

    div-float/2addr v2, v8

    :cond_7
    mul-float v3, v9, v4

    mul-float/2addr v4, v7

    iget-object v5, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iget v5, v5, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->width:I

    iget-object v6, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iget v6, v6, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->height:I

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/wallpaper/video/SurfaceController;->setScaleSurface(FFFFII)V

    return-void

    :cond_8
    const-string/jumbo v0, ""

    goto :goto_4

    :cond_9
    move v1, v2

    goto :goto_5
.end method


# virtual methods
.method public cancelReleaseResource()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, ".Preview"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cancelReleaseResource() mediaPlayer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaReleaseHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaReleaseHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, ".Preview"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cancelReleaseResource() success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, ".Preview"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cancelReleaseResource() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method public initFile(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, ".Preview"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initFile() filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", fd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v8}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResource(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoScreenSize(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoScreenSize:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v8}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x88bc

    invoke-virtual {v0, v1, v8}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setSurface()V

    return-void

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, ".Preview"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mMediaPlayer is not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, ".Preview"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video file is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string/jumbo v0, ""
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_5
    const-string/jumbo v0, ""

    goto :goto_2

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, ".Preview"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mMediaPlayer failed preparing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const-string/jumbo v0, ""

    goto :goto_4
.end method

.method synthetic lambda$-com_android_systemui_wallpaper_video_VideoPlayer_1927(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPrepared() p = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->startDrawing()V

    :cond_0
    return-void
.end method

.method public releaseResource(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, ".Preview"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "releaseResource() mediaPlayer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, ".Preview"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "releaseResource()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseMediaPlayer(Landroid/media/MediaPlayer;)V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :goto_2
    return-void

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaReleaseHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2
.end method

.method public startDrawing()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, ".Preview"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "startDrawing() mediaPlayer is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, ".Preview"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startDrawing() pl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, ".Preview"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "startDrawing() mediaPlayer is not prepared"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    return-void

    :cond_2
    const-string/jumbo v1, ""

    goto :goto_1

    :cond_3
    const-string/jumbo v1, ""

    goto :goto_2

    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_5

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_3
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, ".Preview"

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "startDrawing() failed start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3

    :cond_6
    :try_start_3
    const-string/jumbo v1, ""
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4
.end method

.method public stopDrawing()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, ".Preview"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stopDrawing() mediaPlayer is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, ".Preview"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopDrawing() p = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string/jumbo v1, ""

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, ".Preview"

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stopDrawing() failed pause"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string/jumbo v1, ""

    goto :goto_3
.end method

.method public updateSurfaceInfo(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, ".Preview"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurfaceInfo() width = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", surfaceInfo is null = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    if-nez v0, :cond_2

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iput p1, v0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->width:I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iput p2, v0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->height:I

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setSurface()V

    return-void
.end method

.method public updateSurfaceInfo(Lcom/android/systemui/wallpaper/video/SurfaceInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, ".Preview"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurfaceInfo() surfaceInfo is null = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setSurface()V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
